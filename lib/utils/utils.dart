import 'dart:convert';
import 'package:parentol/modal_class/modal.dart';
import 'package:shared_preferences/shared_preferences.dart';


saveUser(String u) async {
  final prefs = await SharedPreferences.getInstance();
  final key = 'user';
  prefs.setString(key, u);
}

Future<User> getUser() async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString('user');
  if (value == null) {
    return null;
  } else {
    return User.fromJson(json.decode(value));
  }
}



