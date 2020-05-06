import 'package:flutter_simple_dependency_injection/injector.dart';

import 'DatabaseHelper.dart';

class Injection {
  static DatabaseHelper _databaseHelper = DatabaseHelper();
  static Injector injector;

  static Future initInjection() async {
    await _databaseHelper.initDb();
    injector = Injector.getInjector();
    injector.map<DatabaseHelper>((i) => _databaseHelper, isSingleton: true);
  }
}
