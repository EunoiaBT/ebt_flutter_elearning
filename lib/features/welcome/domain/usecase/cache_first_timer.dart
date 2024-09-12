import 'package:ebt_flutter_elearning/core/usecase/usecase.dart';
import 'package:ebt_flutter_elearning/core/utils/typedef.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/repository/welcome_repository.dart';

class CacheFirstTimer extends UsecaseWithoutParam<void> {
  final WelcomeRepository _welcomeRepository;

  const CacheFirstTimer(this._welcomeRepository);

  @override
  ResultFuture call() async => _welcomeRepository.cacheFirstTimer();
}
