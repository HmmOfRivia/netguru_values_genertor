import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class QuotesDatabase {
  final List<Map<String, dynamic>> values = [
    {'value': "Exceed clients' and colleagues' expectations", 'is_favourite': 0},
    {'value': "Take ownership and question the status quo in a constructive manner", 'is_favourite': 0},
    {'value': "Be brave, curious and experiment. Learn from all successes and failures", 'is_favourite': 0},
    {'value': "Act in a way that makes all of us proud", 'is_favourite': 0},
    {'value': "Build an inclusive, transparent and socially responsible culture", 'is_favourite': 0},
    {'value': "Be ambitious, grow yourself and the people around you", 'is_favourite': 0},
    {'value': "Recognize excellence and engagement", 'is_favourite': 0}
  ];

  static final QuotesDatabase dbProvider = QuotesDatabase();
  Database _database;

  Future<Database> get database async{
    return _database != null ? _database : await provideDatabase();
  }

  provideDatabase() async {
    Directory docDirectory = await getApplicationDocumentsDirectory();
    String path = join(docDirectory.path, 'value_generator.db');
    return await openDatabase(path, version: 1, onCreate: initializeDatabase);
    }

  void initializeDatabase(Database db, int version) async {
    await db.execute(
        'CREATE TABLE Quotes (id INTEGER PRIMARY KEY NOT NULL, value TEXT, is_favourite REAL)');
     values.forEach((value) async {await db.insert('Quotes', value); });
  }
}
