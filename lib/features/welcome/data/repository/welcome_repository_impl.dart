import 'package:dartz/dartz.dart';
import 'package:ebt_flutter_elearning/core/errors/exception.dart';
import 'package:ebt_flutter_elearning/core/errors/failure.dart';
import 'package:ebt_flutter_elearning/core/utils/typedef.dart';
import 'package:ebt_flutter_elearning/features/welcome/data/datasource/local.dart';
import 'package:ebt_flutter_elearning/features/welcome/domain/repository/welcome_repository.dart';

class WelcomeRepositoryImpl implements WelcomeRepository {
  final LocalDataSource _localDataSource;

  const WelcomeRepositoryImpl(this._localDataSource);

  @override
  ResultFuture<void> cacheFirstTimer() async {
    try {
      await _localDataSource.cacheFirstTimer();
      return const Right(null);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }

  @override
  ResultFuture<bool> checkIfUserIsFirstTimer() async {
    try {
      final result = await _localDataSource.checkIfUserIsFirstTimer();
      return Right(result);
    } on CacheException catch (e) {
      return Left(
        CacheFailure(message: e.message, statusCode: e.statusCode),
      );
    }
  }
}
