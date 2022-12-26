import 'package:flutter/material.dart';
import 'package:multi_step_form/utils/styles.dart';

class StepTitleText extends StatelessWidget {
  const StepTitleText(this.txt, {Key? key}) : super(key: key);

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: Style.fontSize.stepTitle,
        fontWeight: FontWeight.w700,
        color: Style.color.marineBlue,
      ),
    );
  }
}
