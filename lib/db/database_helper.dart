import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'task_model.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._();
  static Database? _database;

  DatabaseHelper._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'greetings.db');

    return await openDatabase(
      dbPath,
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE greetings(id INTEGER PRIMARY KEY AUTOINCREMENT, message TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertGreeting(Greeting greeting) async {
    final db = await database;
    await db.insert('greetings', greeting.toMap());
  }

  Future<void> deleteAllGreetings() async {
    final db = await database;
    await db.delete('greetings');
  }

  Future<List<Greeting>> getGreetings() async {
    final db = await database;
    var greetingsMapList = await db.query('greetings');
    return List.generate(greetingsMapList.length, (i) {
      return Greeting.fromMap(greetingsMapList[i]);
    });
  }
}