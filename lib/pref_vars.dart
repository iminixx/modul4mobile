import 'package:shared_preferences/shared_preferences.dart';

bool? isLoggedIn;
String? loggedInUsername;

Future<void> saveToLocal() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', isLoggedIn!);
  await prefs.setString('loggedInUsername', loggedInUsername!);
}

deletePref() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('isLoggedin');
  await prefs.remove('loggedInUsername');
}
