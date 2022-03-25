import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_tutorial/timer/bloc/timer_bloc.dart';

class TimerText extends StatelessWidget {
  const TimerText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<TimerBloc>().remainingSeconds;
    return Text(
      seconds.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
