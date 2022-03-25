import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_tutorial/timer/bloc/timer_bloc.dart';

import 'timer_text.dart';
import 'timer_action.dart';

class TimerBody extends StatelessWidget {
  const TimerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(startSeconds: 60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            TimerText(),
            TimerAction(),
          ],
        ),
      ),
    );
  }
}
