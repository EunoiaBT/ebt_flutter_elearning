import 'package:ebt_flutter_elearning/core/constants/ebt_cache_store_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheStore {
  final SharedPreferences _pref;

  const CacheStore(this._pref);

  Future<void> cacheFirstTimer() async {
    await _pref.setBool(EbtCacheStoreKey.isFirstTimer, true);
  }

  Future<void> clearFirstTimer() async {
    await _pref.remove(EbtCacheStoreKey.isFirstTimer);
  }

  Future<bool> checkIfUserIsFirstTimer() async {
    return _pref.getBool(EbtCacheStoreKey.isFirstTimer) ?? false;
  }
}
