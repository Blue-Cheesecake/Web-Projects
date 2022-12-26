import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_page_layout.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({Key? key}) : super(key: key);

  Widget _content(BuildContext context) {
    return Column(
      children: [
        Text("Select Plan"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StepPageLayout(
      content: _content(context),
      haveNextStepButton: true,
      haveGoBackButton: true,
      haveConfirmButton: false,
    );
  }
}
