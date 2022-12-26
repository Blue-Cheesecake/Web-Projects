import 'package:flutter/material.dart';
import 'package:multi_step_form/utils/styles.dart';

class StepSubtitleText extends StatelessWidget {
  const StepSubtitleText(this.txt, {Key? key}) : super(key: key);

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: Style.fontSize.paragraph,
        fontWeight: FontWeight.w400,
        color: Style.color.coolGray,
        letterSpacing: Style.fontSize.subtitleSpacing,
      ),
    );
  }
}
