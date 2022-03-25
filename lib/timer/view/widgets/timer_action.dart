import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_tutorial/timer/bloc/timer_bloc.dart';

class TimerAction extends StatelessWidget {
  const TimerAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (state is TimerInitial)
              IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () =>
                    context.read<TimerBloc>().add(TimerRunOneSecond()),
              ),
            if (state is TimerRunning) ...[
              IconButton(
                icon: const Icon(Icons.pause),
                onPressed: () => context.read<TimerBloc>().add(TimerPause()),
              ),
              IconButton(
                icon: const Icon(Icons.replay),
                onPressed: () => context.read<TimerBloc>().add(TimerReset()),
              ),
            ],
            if (state is TimerPausing) ...[
              IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () => context.read<TimerBloc>().add(TimerResume()),
              ),
              IconButton(
                icon: const Icon(Icons.replay),
                onPressed: () => context.read<TimerBloc>().add(TimerReset()),
              ),
            ],
            if (state is TimerComplete)
              IconButton(
                icon: const Icon(Icons.replay),
                onPressed: () => context.read<TimerBloc>().add(TimerReset()),
              ),
          ],
        );
      },
    );
  }
}
