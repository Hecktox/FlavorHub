import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Mydb {
  late Database db;

  Future open() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'db1.db');
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        create table if not exists users (
        user_id integer primary key autoincrement,
        first_name varchar(50) not null,
        last_name varchar(50) not null,
        email varchar(100) not null,
        username varchar(50) not null,
        password varchar(50) not null,
        isAdmin integer not null default 0
        );
      ''');
    });

    // Check if the sample admin user is already inserted
    bool adminExists = await isAdminUser('maxAdmin');
    if (!adminExists) {
      await sampleAdmin();
    }
  }

  Future<int> insertUser(
    String firstName,
    String lastName,
    String email,
    String username,
    String password, {
    bool isAdmin = false,
  }) async {
    Map<String, dynamic> user = {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'username': username,
      'password': password,
      'isAdmin': isAdmin ? 1 : 0,
    };
    return await db.insert('users', user);
  }

  Future<void> sampleAdmin() async {
    await insertUser(
      'Maximus',
      'Taube',
      'max@example.com',
      'maxAdmin',
      'maxAdmin',
      isAdmin: true,
    );
  }

  Future<Map<String, dynamic>?> getUser(int userId) async {
    List<Map<String, dynamic>> maps =
        await db.query('users', where: 'user_id = ?', whereArgs: [userId]);
    if (maps.length > 0) {
      return maps.first;
    }
    return null;
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    return await db.query('users');
  }

  Future<Map<String, dynamic>?> getUserByUsernameAndPassword({
    required String username,
    required String password,
  }) async {
    List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );
    if (maps.length > 0) {
      return maps.first;
    }
    return null;
  }

  Future<bool> isAdminUser(String username) async {
    List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'username = ? AND isAdmin = 1', // Check if the user is an admin
      whereArgs: [username],
    );
    return maps.isNotEmpty;
  }

  Future<int> updateUser(int user_id, String firstName,
      String lastName,
      String email,
      String username, String password) async {
    Map<String, dynamic> user = {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'username': username,
      'password': password,
    };
    return await db.update('users', user, where: 'user_id = ?', whereArgs: [user_id]);
  }

  Future<int> deleteUser(int id) async {
    return await db.delete('users', where: 'user_id = ?', whereArgs: [id]);
  }
}
