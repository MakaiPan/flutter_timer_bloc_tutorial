part of 'timer_bloc.dart';

@immutable
abstract class TimerEvent {}

class TimerRunOneSecond extends TimerEvent {}

class TimerTick extends TimerEvent {}

class TimerPause extends TimerEvent {}

class TimerResume extends TimerEvent {}

class TimerReset extends TimerEvent {}
