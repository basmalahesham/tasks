import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'; // Import for join

class SqlDb {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'database.db'); //databasePath/database.db
    Database myDb = await openDatabase(path, onCreate: _onCreate,version: 4,onUpgrade: _onUpgrade);
    return myDb;
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE 'notes' (
      'id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      'title' TEXT NOT NULL,
      'note' TEXT NOT NULL
    )
    ''');
    print('Create Database');
  }

  _onUpgrade(Database db, int oldVersion,int newVersion) async {
    // Implement database upgrade logic if needed
    await db.execute('ALTER TABLE notes ADD COLUMN color TEXT');
    print('onUpgrade');
  }

  // Select
  readData(String sql) async {
    Database? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql);
    return response;
  }
  // Delete
  deleteData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
  // Update
  updateData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }
  // Insert
  insetData(String sql) async {
    Database? myDb = await db;
    int response = await myDb!.rawInsert(sql);
    return response;
  }

  myDeleteDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'database.db');
    await deleteDatabase(path);
  }
}
