import 'package:bloc/bloc.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  int startedSeconds;

  TimerBloc({required this.startedSeconds});
}
