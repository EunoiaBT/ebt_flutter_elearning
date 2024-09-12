import 'package:ebt_flutter_elearning/config/injection/injection.dart';
import 'package:ebt_flutter_elearning/core/errors/exception.dart';
import 'package:ebt_flutter_elearning/core/store/cache_store.dart';

abstract class LocalDataSource {
  const LocalDataSource();

  Future<void> cacheFirstTimer();
  Future<bool> checkIfUserIsFirstTimer();
}

class LocalDataSourceImpl implements LocalDataSource {
  const LocalDataSourceImpl();

  @override
  Future<void> cacheFirstTimer() async {
    try {
      await sl<CacheStore>().cacheFirstTimer();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<bool> checkIfUserIsFirstTimer() {
    // TODO: implement checkIfUserIsFirstTimer
    throw UnimplementedError();
  }
}
