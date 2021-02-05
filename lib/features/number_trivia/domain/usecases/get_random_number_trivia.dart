<<<<<<< HEAD

import 'package:clean_code/core/error/failure.dart';
=======
import 'package:clean_code/core/failure.dart';
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
import 'package:clean_code/core/usescases/usecases.dart';
import 'package:clean_code/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_code/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoPramas> {

  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);


  @override
  Future<Either<Failure, NumberTrivia>> call(NoPramas params) async{
<<<<<<< HEAD
    return await repository.getRandomNumberTrivia();
=======
    return await repository.getRandomTrivia();
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
  }
}
