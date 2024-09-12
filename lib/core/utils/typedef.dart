import 'package:dartz/dartz.dart';
import 'package:ebt_flutter_elearning/core/error/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = Future<Either<Failure, void>>;
typedef DataMap = Map<String, dynamic>;
