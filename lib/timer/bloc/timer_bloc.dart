import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'timer_state.dart';
part 'timer_event.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  late int remainingSeconds;
  late Timer _timer;
  int startSeconds;

  TimerBloc({required this.startSeconds})
      : remainingSeconds = startSeconds,
        super(TimerInitial()) {
    on<TimerRunOneSecond>((event, emit) {
      emit(TimerRunning());
      _timer = Timer(const Duration(seconds: 1), () => add(TimerTick()));
    });

    on<TimerTick>((event, emit) {
      remainingSeconds -= 1;
      if (remainingSeconds > 0) {
        add(TimerRunOneSecond());
      } else {
        emit(TimerComplete());
      }
    });

    on<TimerPause>((event, emit) {
      emit(TimerPausing());
      _timer.cancel();
    });

    on<TimerResume>((event, emit) {
      add(TimerRunOneSecond());
    });

    on<TimerReset>((event, emit) {
      emit(TimerInitial());
      _timer.cancel();
      remainingSeconds = startSeconds;
    });
  }
}
