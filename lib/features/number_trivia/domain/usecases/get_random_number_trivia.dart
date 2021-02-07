
import 'package:clean_code/core/error/failure.dart';
import 'package:clean_code/core/usescases/usecases.dart';
import 'package:clean_code/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_code/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoPramas> {

  final NumberTriviaRepository repository;
  GetRandomNumberTrivia(this.repository);


  @override
  Future<Either<Failure, NumberTrivia>> call(NoPramas params) async{
    return await repository.getRandomNumberTrivia();
  }
}
