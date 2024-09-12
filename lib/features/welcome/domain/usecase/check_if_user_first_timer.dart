import 'package:ebt_flutter_elearning/core/usecase/usecase.dart';
import 'package:ebt_flutter_elearning/core/utils/typedef.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/repository/welcome_repository.dart';

class CheckIfUserIsFirstTimer extends UsecaseWithoutParam<bool> {
  final WelcomeRepository _repo;

  const CheckIfUserIsFirstTimer(this._repo);

  @override
  ResultFuture<bool> call() async => _repo.checkIfUserIsFirstTimer();
}
