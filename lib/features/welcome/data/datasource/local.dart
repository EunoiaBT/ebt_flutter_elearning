import 'package:ebt_flutter_elearning/core/utils/typedef.dart';

abstract class LocalDataSource {
  const LocalDataSource();

  ResultFuture<void> cacheFirstTimer();
  ResultFuture<bool> checkIfUserIsFirstTimer();
}

class LocalDataSourceImpl implements LocalDataSource {
  @override
  ResultFuture<void> cacheFirstTimer() {
    // TODO: implement cacheFirstTimer
    throw UnimplementedError();
  }

  @override
  ResultFuture<bool> checkIfUserIsFirstTimer() {
    // TODO: implement checkIfUserIsFirstTimer
    throw UnimplementedError();
  }
}
