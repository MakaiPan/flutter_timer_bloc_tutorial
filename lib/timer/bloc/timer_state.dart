part of 'timer_bloc.dart';

@immutable
abstract class TimerState {}

class TimerInitial extends TimerState {}

class TimerRunning extends TimerState {}

class TimerPausing extends TimerState {}

class TimerComplete extends TimerState {}
