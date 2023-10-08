import 'package:first/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIcrementState());
  int scoreA = 0;
  int scoreB = 0;

  void TeamIncrement({required team, required int buttonNumber}) {
    if (team == 'A' && scoreA + buttonNumber < 100) {
      scoreA += buttonNumber;
      emit(CounterAIcrementState());
    } else if (team == 'B' && scoreB + buttonNumber < 100) {
      scoreB += buttonNumber;
      emit(CounterBIcrementState());
    }
  }

  void Reset() {
    scoreA = 0;
    scoreB = 0;
    emit(ResetState());
  }
}
