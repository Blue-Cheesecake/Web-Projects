import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/current_step_index/current_step_index_bloc.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentStepIndexBloc, CurrentStepIndexState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            context
                .read<CurrentStepIndexBloc>()
                .add(CurrentStepIndexEventNext());
          },
          child: Text("Next Step"),
        );
      },
    );
  }
}
