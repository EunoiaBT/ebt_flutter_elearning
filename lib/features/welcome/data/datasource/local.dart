import 'package:ebt_flutter_elearning/core/utils/typedef.dart';

abstract class LocalDataSource {
  const LocalDataSource();

  ResultFuture<void> cacheFirstTimer();

  ResultFuture<bool> checkIfUserIsFirstTimer();
}
