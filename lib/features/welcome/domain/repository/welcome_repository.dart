import 'package:ebt_flutter_elearning/core/utils/typedef.dart';

abstract class WelcomeRepository {
  const WelcomeRepository();

  ResultFuture<void> cacheFirstTimer();
  ResultFuture<bool> checkIfUserIsFirstTimer();
}
