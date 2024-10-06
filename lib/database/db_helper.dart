import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    return await openDatabase(
      join(dbPath, 'aenzbi.db'),
      version: 1,
      onCreate: (db, version) async {
        // Create tables
        await db.execute('CREATE TABLE transactions (id TEXT PRIMARY KEY, amount REAL, description TEXT, date TEXT)');
      },
    );
  }

  Future<void> insertTransaction(String id, double amount, String description, String date) async {
    final db = await database;
    await db.insert('transactions', {'id': id, 'amount': amount, 'description': description, 'date': date}, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> getTransactions() async {
    final db = await database;
    return await db.query('transactions');
  }
}
