<<<<<<< HEAD
import 'package:clean_code/core/error/failure.dart';
=======
<<<<<<< HEAD
import 'package:clean_code/core/error/failure.dart';
=======
import 'package:clean_code/core/failure.dart';
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
>>>>>>> c79a46ab0fd91feff1f81040a86b07afac57d27f
import 'package:clean_code/core/usescases/usecases.dart';
import 'package:clean_code/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_code/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super([number]);
}
