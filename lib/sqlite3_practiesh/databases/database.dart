import 'package:project/sqlite3_practiesh/model/models.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Dbhelper {
  static final dbname = "practiesh";
  static final tablename = "terbo1";
  static final version_name = 1;
  static Database? _database;

  // columan name
  static final String _id = 'id';
  static final String _name = 'name';
  static final String _email = 'email';
  static final String _age = 'age';
  static final String _date = 'date';

  Future<Database?> getDatabase() async {
    if (_database == null) {
      _database = await createDatabase();
    }
    return _database;
  }

  Future<Database> createDatabase() async {
    var path = join(await getDatabasesPath(), dbname);
    print('database path : $path');
    return openDatabase(
      path,
      version: version_name,
      onCreate: (db, version) {
        return db.execute('CREATE TABLE $tablename('
            '$_id INTEGER PRIMARY KEY AUTOINCREMENT , '
            '$_name TEXT, '
            '$_email TEXT,'
            '$_age INTEGER,'
            '$_date INTEGER )');
      },
    );
  }
  insert(Models models) async {
    final db = await getDatabase();
     return await db!.insert(tablename, models.toMap());
  }

  Future<List<Models>>  readData() async {
    final db = await getDatabase();
    final List<Map<String, dynamic>> maps  = await db!.query(tablename);
    return List.generate(maps.length, (index) => Models.fromMap(maps[index])).toList();
  }
}