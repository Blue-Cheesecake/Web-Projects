import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/go_back_button.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Summary"),
        Row(
          children: [
            GoBackButton(),
          ],
        )
      ],
    );
  }
}
