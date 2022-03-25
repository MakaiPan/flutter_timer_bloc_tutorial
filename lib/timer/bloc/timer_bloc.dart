import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'timer_state.dart';
part 'timer_event.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  int startedSeconds;

  TimerBloc({required this.startedSeconds});
}
