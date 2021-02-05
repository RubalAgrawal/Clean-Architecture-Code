import 'package:clean_code/core/usescases/usecases.dart';
import 'package:clean_code/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_code/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_code/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {
  }
  
  void main() {
    GetRandomNumberTrivia usecase;
    MockNumberTriviaRepository mockNumberTriviaRepository;
  
    setUp(() {
      mockNumberTriviaRepository = MockNumberTriviaRepository();
      usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
    });
  
    final tNumberTrivia = NumberTrivia(number: 1, text: 'test');
    test(
      'should get trivia from the repository',
      () async {
<<<<<<< HEAD
        when(mockNumberTriviaRepository.getRandomNumberTrivia())
=======
        when(mockNumberTriviaRepository.getRandomTrivia())
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
            .thenAnswer((_) async => Right(tNumberTrivia));
  
        final result = await usecase(NoPramas());
  
        expect(result, Right(tNumberTrivia));
<<<<<<< HEAD
        verify(mockNumberTriviaRepository.getRandomNumberTrivia());
=======
        verify(mockNumberTriviaRepository.getRandomTrivia());
>>>>>>> 35e104a2eda4d4dc6212c6fb3cb5daa790d5fe17
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
