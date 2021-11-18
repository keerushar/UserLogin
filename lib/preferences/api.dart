import 'package:myapp/preferences/shared_pref.dart';

class ApiUser {
  static Future<void> loginUser() async {
    String token = 'asdfgh';
    await SharedPreferencesHelper().setAuthToken(token);
  }
}
