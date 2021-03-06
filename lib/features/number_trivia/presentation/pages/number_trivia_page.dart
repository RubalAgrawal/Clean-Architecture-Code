import 'package:clean_code/features/number_trivia/presentation/bloc/bloc.dart';
import 'package:clean_code/features/number_trivia/presentation/widgets/widgets.dart';
import 'package:clean_code/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberTriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Trivia'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
    return BlocProvider(
      builder: (_) => sl<NumberTriviaBloc>(),
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                // Top half
                BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                    builder: (context, state) {
                  if (state is Empty) {
                    return MessageDisplay(
                      message: 'Start Searching',
                    );
                  } else if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    return TriviaDisplay(
                      numberTrivia: state.trivia,
                    );
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  }
                }),
                SizedBox(height: 20),
                // Bottom half
                TriviaControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
