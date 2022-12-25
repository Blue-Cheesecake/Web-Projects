import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/go_back_button.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/next_button.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Select Plans"),
        Row(
          children: [
            GoBackButton(),
            NextButton(),
          ],
        )
      ],
    );
  }
}
