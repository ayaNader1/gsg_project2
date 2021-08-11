import 'package:project2_gsg/helper/db_helper.dart';

class User {
  String email;
  String password;
  String id;
  User({this.email,this.password,this.id});

  toJson() {
    return {
      DBHelper.idColumnName: this.id,
      DBHelper.nameColumnName: this.email,
      DBHelper.passwordColumnName: this.password
    };
  }

  User.fromJson(Map map) {
    this.email = map[DBHelper.nameColumnName];
    this.id = map[DBHelper.idColumnName];
    this.password = map[DBHelper.passwordColumnName];
  }
}