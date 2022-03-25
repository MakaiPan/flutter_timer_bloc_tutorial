import 'package:flutter/material.dart';
import 'package:flutter_timer_tutorial/timer/view/widgets/timer_body.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TimerBody(),
    );
  }
}
