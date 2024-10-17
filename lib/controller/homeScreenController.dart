import 'package:shared_preferences/shared_preferences.dart';

class Homescreencontroller {
  static late final SharedPreferences prefs;
  static String? password;

  static initsharedprefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future addvalue(email, password) async {
    await prefs.setString(email, password);
  }

  static getvalue(email) {
    password = prefs.getString(email);
  }
}
