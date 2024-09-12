import 'package:shared_preferences/shared_preferences.dart';

class CacheStore {
  final SharedPreferences _pref;

  const CacheStore(this._pref);

  Future<void> cacheFirstTimer() async {
    await _pref.setBool('isFirstTimer', true);
  }

  Future<bool> checkIfUserIsFirstTimer() async {
    return _pref.getBool('isFirstTimer') ?? false;
  }
}
