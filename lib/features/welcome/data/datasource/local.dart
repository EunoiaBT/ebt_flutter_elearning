abstract class LocalDataSource {
  const LocalDataSource();

  Future<void> cacheFirstTimer();
  Future<bool> checkIfUserIsFirstTimer();
}

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<void> cacheFirstTimer() {
    // TODO: implement cacheFirstTimer
    throw UnimplementedError();
  }

  @override
  Future<bool> checkIfUserIsFirstTimer() {
    // TODO: implement checkIfUserIsFirstTimer
    throw UnimplementedError();
  }
}
