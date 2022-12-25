import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/next_button.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Personal Info"),
        Row(
          children: [
            NextButton(),
          ],
        )
      ],
    );
  }
}
