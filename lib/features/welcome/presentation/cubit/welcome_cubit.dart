import 'package:bloc/bloc.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/cache_first_timer.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/usecase/check_if_user_first_timer.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit({
    required CacheFirstTimer cacheFirstTimer,
    required CheckIfUserIsFirstTimer checkIfUserIsFirstTimer,
  })  : _cacheFirstTimer = cacheFirstTimer,
        _checkIfUserIsFirstTimer = checkIfUserIsFirstTimer,
        super(WelcomeInitial()) {
    _currentPageIndex = 0;
  }

  final CacheFirstTimer _cacheFirstTimer;
  final CheckIfUserIsFirstTimer _checkIfUserIsFirstTimer;
  final PageController pageController = PageController(initialPage: 0);
  late int _currentPageIndex;

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

  // Method to update page indicator
  void updatePageIndicator(int index) {
    _currentPageIndex = index;
  }

  // Method to handle dot navigation click
  void dotNavigationClick(int index) {
    pageController.jumpToPage(index);
    _currentPageIndex = index;
  }

  // Method to handle next page navigation
  void nextPage() {
    if (_currentPageIndex == 3) {
      cacheFirstTimer();
    } else {
      final nextPageIndex = _currentPageIndex + 1;
      pageController.jumpToPage(nextPageIndex);
      _currentPageIndex = nextPageIndex;
    }
  }

  // Method to skip to the last page
  void skipPage() {
    pageController.jumpToPage(3);
    _currentPageIndex = 3;
  }

  // Overriding the close method to dispose of the PageController
  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
