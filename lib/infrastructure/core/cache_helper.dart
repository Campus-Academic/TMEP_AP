import 'package:shared_preferences/shared_preferences.dart';

// example of cache helper
// created by Shayne C

class CacheHelper {
  static late SharedPreferences prefs;

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  // Save user token
  static Future<bool> saveUserToken(String? userToken) async {
    return await prefs.setString('userToken', userToken ?? '');
  }

  static String getUserToken() {
    final result = prefs.getString('userToken');
    return result!;
  }
}
