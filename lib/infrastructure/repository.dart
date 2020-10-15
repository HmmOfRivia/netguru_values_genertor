import 'package:injectable/injectable.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';

import 'database.dart';

@injectable
class QuotesRepository{
  final quotesDB = QuotesDatabase.dbProvider;

  Future<int> createQuote(Quote quote) async {
    final db = await quotesDB.database;
    return db.insert('Quotes',
        toDatabase(quote));
  }

  Future<Quote> getRandomQuote() async {
    final db = await quotesDB.database;
    final result = await db.rawQuery('SELECT * FROM Quotes ORDER BY RANDOM() LIMIT(1)');
    List<Quote> quote = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList()
        : [Quote(id: 100, value: 'Add Quote to display it here', isFavourite: true)];
    return quote[0];
  }

  Future<List<Quote>> getFavouritesList() async {
    final db = await quotesDB.database;
    final result = await db.query('Quotes', where: 'is_favourite = ?', whereArgs: [1]);
    List<Quote> quotes = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList() : [];
    return quotes;
  }

  Future<List<Quote>> getAllQuotes() async {
    final db = await quotesDB.database;
    final result = await db.query('Quotes');
    List<Quote> quotes = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList() : [];
    return quotes;
  }

  Future<int> deleteQuote(int id) async {
    final db = await quotesDB.database;
    return db.delete('Quotes',
        where: 'id = ?',
        whereArgs: [id]);
  }

  Future<int> updateQuote(Quote quote) async {
    final db = await quotesDB.database;
    return db.update('Quotes',
        toDatabase(quote),
        where: 'id = ?',
        whereArgs: [quote.id]);
  }

  Map<String, dynamic> toDatabase(Quote quote) => {
    'id': quote.id,
    'value': quote.value,
    'is_favourite': quote.isFavourite == false ? 0 : 1};
}