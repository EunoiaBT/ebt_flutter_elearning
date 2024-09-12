part of 'welcome_cubit.dart';

@immutable
abstract class WelcomeState extends Equatable {
  const WelcomeState();

  @override
  List<Object?> get props => [];
}

class WelcomeInitial extends WelcomeState {}

class CachingFirstTimer extends WelcomeState {
  const CachingFirstTimer();
}

class CheckingIfUserIsAlreadyCached extends WelcomeState {
  const CheckingIfUserIsAlreadyCached();
}

// CacheFirstTimer
class CacheTheFirstTimer extends WelcomeState {
  const CacheTheFirstTimer();
}

// Check FirstTimer
class CheckIfUserIsAlreadyCached extends WelcomeState {
  const CheckIfUserIsAlreadyCached();
}

// Error
class CachingError extends WelcomeState {
  final String message;

  const CachingError({required this.message});

  @override
  List<String> get props => [message];
}

// Success
class CachingSuccess extends WelcomeState {
  const CachingSuccess();
}

// Status
class CacheStatus extends WelcomeState {
  final bool isFirstTimer;

  const CacheStatus({required this.isFirstTimer});

  @override
  List<bool> get props => [isFirstTimer];
}

class WelcomePageChanged extends WelcomeState {
  final int index;

  const WelcomePageChanged({
    this.index = 0,
  });

  @override
  List<Object> get props => [index];
}
