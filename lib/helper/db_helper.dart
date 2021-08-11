import 'dart:io';
import 'package:project2_gsg/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';


class DBHelper {
  DBHelper._();
  static DBHelper dbHelper = DBHelper._();
  static final String dbaseName = 'usersDb.db';
  static final String tableName = 'Users';
  static final String idColumnName = 'id';
  static final String nameColumnName = 'userName';
  static final String passwordColumnName = 'userPassword';
  Database database;
  initDatabase() async {
    database = await createConnection();
  }
  Future<Database> createConnection() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '/dbaseName';
    Database database = await openDatabase(path,
        onOpen: (database){
          print('the database has been opened');
        },
        onCreate: (db,v){
          print('the database has been created');
          db.execute( '''CREATE TABLE $tableName ($idColumnName INTEGER PRIMARY KEY AUTOINCREMENT, $nameColumnName TEXT, $passwordColumnName TEXT''');
        }
    );
    return database;
  }

  insertUser(User user) async {
    try {
      database = await initDatabase();
      await database.insert(tableName, user.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future<List<User>> getAllTasks() async{
    List<Map<String,Object>> results = await database.query(tableName);
    List<User> tasks = results.map((e) {
      return User.fromJson(e);
    }).toList();
    return tasks;
  }

  deleteTask(int id ) async {
    database.delete(tableName,where: 'id=?' , whereArgs: [id]);
  }
  updateTask(User user) async {
    database.update(tableName, user.toJson(),
        where: 'id=?',whereArgs: [user.id]);
  }

}