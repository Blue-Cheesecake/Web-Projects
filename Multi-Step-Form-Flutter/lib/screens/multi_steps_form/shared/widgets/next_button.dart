import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/presentation/bloc/current_step_index/current_step_index_bloc.dart';
import 'package:multi_step_form/utils/styles.dart';

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
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                vertical: Dimensions.web.verticalPadButton,
                horizontal: Dimensions.web.horizontalPadButton,
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Style.color.marineBlue),
            foregroundColor: MaterialStateProperty.all(Style.color.alabaster),
            overlayColor: MaterialStateProperty.all(Style.color.pastelBlue),
          ),
          child: const Text("Next Step"),
        );
      },
    );
  }
}
