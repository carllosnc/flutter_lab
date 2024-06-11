import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import './dog.dart';

class _DogDatabase {
  late Future<Database> database;

  final data = StreamController<List<Map<String, Object?>>>.broadcast();

  init() async {
    database = openDatabase(
      join(
        await getDatabasesPath(),
        'flutter.db',
      ),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE dogs (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertDog(Dog dog) async {
    final db = await database;

    await db.insert(
      'dogs',
      dog.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    await getDogs();
  }

  Future<List<Dog>> getDogs() async {
    final db = await database;
    final result = await db.query('dogs');

    data.add(result);

    return result.map((row) => Dog.fromMap(row)).toList();
  }

  Future<void> eraseDogs() async {
    final db = await database;
    await db.delete('dogs');
    await getDogs();
  }
}

final dogDatabase = _DogDatabase();
