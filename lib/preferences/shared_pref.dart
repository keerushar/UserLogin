import 'package:shared_preferences/shared_preferences.dart';

enum UserPref {
  AuthToken,
}

class SharedPreferencesHelper {
  setAuthToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(UserPref.AuthToken.toString(), token);
  }

  getAuthtoken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(UserPref.AuthToken.toString());
  }

  removeValue() async {
    final pref = await SharedPreferences.getInstance();
    return pref.remove(UserPref.AuthToken.toString());
  }
}
