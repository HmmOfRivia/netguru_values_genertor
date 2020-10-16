import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netguru_values_genertor/domain/Quote.dart';
import 'package:netguru_values_genertor/infrastructure/repository_failures.dart';
import 'package:sqflite/sqflite.dart';

import 'database.dart';

@injectable
class QuotesRepository{
  final quotesDB = QuotesDatabase.dbProvider;

  Future<Either<RepositoryFailure, Unit>> createQuote(Quote quote) async {
    try{
      final db = await quotesDB.database;
      await db.insert('Quotes',
          toDatabase(quote));
      return right(unit);
    } on DatabaseException catch(_) {
      return left(RepositoryFailure.createQuoteError());
    }
  }

  Future<Either<RepositoryFailure,Quote>> getRandomQuote() async {
    try{
      final db = await quotesDB.database;
      final result = await db.rawQuery('SELECT * FROM Quotes ORDER BY RANDOM() LIMIT(1)');
      List<Quote> quote = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList()
          : [Quote(id: 100, value: 'Add Quote to display it here', isFavourite: true)];
      return right(quote[0]);
    } on DatabaseException catch(_){
      return left(RepositoryFailure.getRandomQuoteError());
    }

  }

  Future<Either<RepositoryFailure,List<Quote>>> getFavouritesList() async {
    try{
      final db = await quotesDB.database;
      final result = await db.query('Quotes', where: 'is_favourite = ?', whereArgs: [1]);
      List<Quote> quotes = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList() : [];
      return right(quotes);
    } on DatabaseException catch (_){
      return left(RepositoryFailure.getFavouritesListError());
    }

  }

  Future<Either<RepositoryFailure,List<Quote>>> getAllQuotes() async {
    try{
      final db = await quotesDB.database;
      final result = await db.query('Quotes');
      List<Quote> quotes = result.isNotEmpty ? result.map((data) => Quote.fromDatabase(data)).toList() : [];
      return right(quotes);
    } on DatabaseException catch(_) {
      return left(RepositoryFailure.getAllQuotesError());
    }

  }

  Future<Either<RepositoryFailure,Unit>> deleteQuote(int id) async {
    try{
      final db = await quotesDB.database;
      await db.delete('Quotes',
          where: 'id = ?',
          whereArgs: [id]);
      return right(unit);
    } on DatabaseException catch (_) {
      return left(RepositoryFailure.deleteQuoteError());
    }

  }

  Future<Either<RepositoryFailure, Unit>> updateQuote(Quote quote) async {
    try{
      final db = await quotesDB.database;
      await db.update('Quotes',
          toDatabase(quote),
          where: 'id = ?',
          whereArgs: [quote.id]);
      return right(unit);
    } on DatabaseException catch(_) {
      return left(RepositoryFailure.updateQuoteError());
    }
  }

  Map<String, dynamic> toDatabase(Quote quote) => {
    'id': quote.id,
    'value': quote.value,
    'is_favourite': quote.isFavourite == false ? 0 : 1};
}