<<<<<<< HEAD
import 'package:clean_code/core/error/failure.dart';
=======
<<<<<<< HEAD
import 'package:clean_code/core/error/failure.dart';
=======
import 'package:clean_code/core/failure.dart';
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
>>>>>>> c79a46ab0fd91feff1f81040a86b07afac57d27f
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call();
}

class NoPramas extends Equatable {}