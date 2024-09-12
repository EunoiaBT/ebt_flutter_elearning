import 'package:ebt_flutter_elearning/core/usecase/usecase.dart';
import 'package:ebt_flutter_elearning/core/utils/typedef.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/repository/welcome_repository.dart';

class CheckIfUserIsFirstTimer extends UsecaseWithoutParam<bool> {
  final WelcomeRepository _welcomeRepository;

  const CheckIfUserIsFirstTimer(this._welcomeRepository);

  @override
  ResultFuture<bool> call() async =>
      _welcomeRepository.checkIfUserIsFirstTimer();
}
