part of 'welcome_cubit.dart';

@immutable
abstract class WelcomeState extends Equatable {
  const WelcomeState();

  @override
  List<Object?> get props => [];
}

final class WelcomeInitial extends WelcomeState {}

// CacheFirstTimer
class CacheFirstTimer extends WelcomeState {
  const CacheFirstTimer();
}

// Check FirstTimer
class CheckIfUserIsFirstTimer extends WelcomeState {
  const CheckIfUserIsFirstTimer();
}
