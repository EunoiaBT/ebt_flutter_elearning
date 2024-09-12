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

// CacheFirstTimer
class CacheFirstTimer extends WelcomeState {
  const CacheFirstTimer();
}

// Check FirstTimer
class CheckIfUserIsFirstTimer extends WelcomeState {
  const CheckIfUserIsFirstTimer();
}

// Error
class CachingError extends WelcomeState {
  const CachingError({required this.message});

  final String message;

  @override
  List<String> get props => [message];
}

// Success
class CachingSuccess extends WelcomeState {
  const CachingSuccess();
}

class WelcomePageChanged extends WelcomeState {
  final int index;

  const WelcomePageChanged({
    this.index = 0,
  });

  @override
  List<Object> get props => [index];
}
