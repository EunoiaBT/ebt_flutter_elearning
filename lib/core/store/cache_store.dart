import 'package:ebt_flutter_elearning/core/constants/ebt_cache_store_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheStore {
  final SharedPreferences _pref;

  const CacheStore({required SharedPreferences pref}) : _pref = pref;

  Future<void> cacheFirstTimer() async {
    await _pref.setBool(EbtStoreKey.isFirstTimer, false);
  }

  Future<void> clearFirstTimer() async {
    await _pref.remove(EbtStoreKey.isFirstTimer);
  }

  Future<bool> checkIfUserIsFirstTimer() async {
    return _pref.getBool(EbtStoreKey.isFirstTimer) ?? false;
  }
}
