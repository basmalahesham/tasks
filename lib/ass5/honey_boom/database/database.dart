import 'dart:io';
import 'package:optical/ass5/honey_boom/models/product_model.dart';
import 'package:path/path.dart'; // Import for join
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ProductDataBase {
  static final ProductDataBase _instance =
      ProductDataBase._(); // Private Constructor
  static Database? _database;

  ProductDataBase._();

  factory ProductDataBase() {
    // Return the singleton instance of ProductDataBase
    return _instance;
  }

  Future<Database> get db async {
    if (_database != null) {
      return _database!;
    }

    _database = await init();
    return _database!;
  }

  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String dbPath = join(directory.path, 'database.db');

    // Await the openDatabase call
    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  void _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE product(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        image TEXT,
        price INTEGER
      )
    ''');
    print("Database was created!");
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    // Implement database upgrade logic if needed
  }

  Future<List<ProductModel>> fetchAll() async {
    var client = await db;
    final res = await client.query('product');
    if (res.isNotEmpty) {
      var products =
          res.map((productMap) => ProductModel.fromDb(productMap)).toList();
      return products;
    }
    return [];
  }

  Future<ProductModel?> fetchProduct(int id) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps =
        client.query('product', where: 'id = ?', whereArgs: [id]);
    var maps = await futureMaps;
    if (maps.isNotEmpty) {
      return ProductModel.fromDb(maps.first);
    }
    return null;
  }

  Future<int> addProduct(ProductModel product) async {
    var client = await db;
    return client.insert(
      'product',
      product.toMapForDb(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  Future<void> addMultipleProducts(List<ProductModel> products) async {
    for (var product in products) {
      await addProduct(product);
    }
  }


  Future<int> updateProduct(ProductModel newProduct) async {
    var client = await db;
    return client.update(
      'product',
      newProduct.toMapForDb(),
      where: 'id = ?',
      whereArgs: [newProduct.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> removeProduct(int id) async {
    var client = await db;
    return client.delete(
      'product',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future closeDb() async {
    var client = await db;
    await client.close();
  }
}
