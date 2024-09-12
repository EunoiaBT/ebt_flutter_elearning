import 'package:ebt_flutter_elearning/core/errors/exception.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    required super.statusCode,
  });
}

class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
    required super.statusCode,
  });
}

class APIFailure extends Failure {
  const APIFailure({
    required super.message,
    required super.statusCode,
  });

  APIFailure.fromException(APIException e)
      : this(
          message: e.message,
          statusCode: e.statusCode,
        );
}
