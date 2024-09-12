import 'package:bloc/bloc.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/cache_first_timer.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/check_if_user_first_timer.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit({
    required CacheFirstTimer cacheFirstTimer,
    required CheckIfUserIsFirstTimer checkIfUserIsFirstTimer,
  })  : _cacheFirstTimer = cacheFirstTimer,
        _checkIfUserIsFirstTimer = checkIfUserIsFirstTimer,
        super(
          WelcomeInitial(),
        );

  final CacheFirstTimer _cacheFirstTimer;
  final CheckIfUserIsFirstTimer _checkIfUserIsFirstTimer;

  // Method to cache first timer
  Future<void> cacheFirstTimer() async {
    emit(const CachingFirstTimer());
    final result = await _cacheFirstTimer();

    result.fold(
      (failure) => emit(CachingError(message: failure.message)),
      (_) => emit(const CachingSuccess()),
    );
  }

  // Method to check if user is first timer
  Future<void> checkIfUserIsFirstTimer() async {
    emit(const CheckingIfUserIsFirstTimer());
    final result = await _checkIfUserIsFirstTimer();

    result.fold(
      (failure) => emit(const CacheStatus(isFirstTimer: false)),
      (status) => emit(CacheStatus(isFirstTimer: status)),
    );
  }
}
