import 'package:ebt_flutter_elearning/core/utils/typedef.dart';

abstract class UsecaseWithParam<T, Params> {
  const UsecaseWithParam();
  ResultFuture<T> call(Params params);
}

abstract class UsecaseWithoutParam<T> {
  const UsecaseWithoutParam();
  ResultFuture<T> call();
}
