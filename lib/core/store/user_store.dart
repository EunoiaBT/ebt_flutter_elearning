import 'package:ebt_flutter_elearning/core/constants/ebt_cache_store_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStore {
  final SharedPreferences _pref;

  const UserStore({required SharedPreferences pref}) : _pref = pref;

  Future<void> setToken(String token) async {
    await _pref.setString(EbtStoreKey.token, token);
  }

  Future<void> clearToken() async {
    await _pref.remove(EbtStoreKey.token);
  }

  Future<String?> getToken() async {
    return _pref.getString(EbtStoreKey.token);
  }
}
