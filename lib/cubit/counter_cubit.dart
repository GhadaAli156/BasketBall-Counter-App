import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basketballcounterapp/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void TeamIncrement({required String team,required int buttonNumber})
  {
    if(team == 'A'){
      teamAPoints+=buttonNumber;
      emit(CounterAIncrementState());
    }
    else if(team == 'B'){
      teamBPoints+=buttonNumber;
      emit(CounterBIncrementState());
    }
    else{
      teamAPoints=0;
      teamBPoints=0;
      emit(CounterAIncrementState());
    }
  }
  void ResetState(){
    teamAPoints=0;
    teamBPoints=0;
    emit(Reset());
  }
}