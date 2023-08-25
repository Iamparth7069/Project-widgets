import 'package:project/sqlite/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  // database name
  static final String _dbName = 'tops.db';

  // database version
  static int _dbVersion = 1;

  // tables name
  static final String _tableUser = 'user';

  // Column name
  static final String _id = 'id';
  static final String _name = 'name';
  static final String _email = 'email';
  static final String _age = 'age';
  static final String _date = 'date';

  static Database? _database;
  User? user;
  Future<Database?> getDatabase() async {
    if (_database == null) {
      _database = await createDatabase();
    }
    return _database;
  }

  Future<Database> createDatabase() async {
    var path = join(await getDatabasesPath(), _dbName);
    print('database path : $path');

    return openDatabase(
      path,
      version: _dbVersion,
      onCreate: (db, version) {
        return db.execute('CREATE TABLE $_tableUser('
            '$_id INTEGER PRIMARY KEY AUTOINCREMENT , '
            '$_name TEXT, '
            '$_email TEXT,'
            '$_age INTEGER,'
            '$_date INTEGER )');
      },
    );
  }

  Future<int> insert(User user) async {
    final db = await getDatabase();

    return await db!.insert(_tableUser, user.toMap());
  }

  Future<List<User>> getUserList() async {
    final db = await getDatabase();
    List<Map<String, dynamic>> map = await db!.query(_tableUser);

    return List.generate(map.length, (index) => User.fromMap(map[index]))
        .toList();
  }

  Future<int> update(User user) async {
    final db = await getDatabase();
    return await db!.update(_tableUser, user.toMap(), where: '$_id = ?', whereArgs: [user.id]);
  }

  Future<int> delete(int id) async {
    final db = await getDatabase();
    return await db!.delete(_tableUser,where: '$_id = ?',whereArgs: [id]);
  }
}
