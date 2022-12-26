import 'package:flutter/material.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/utils/styles.dart';

class StepCircle extends StatelessWidget {
  const StepCircle({Key? key, required this.step, required this.isSelected})
      : super(key: key);

  final int step;
  final bool isSelected;

  BoxDecoration _outlineDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Style.color.white),
    );
  }

  BoxDecoration _fullDecoration() {
    return BoxDecoration(
      color: Style.color.lightBlue,
      shape: BoxShape.circle,
    );
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = _outlineDecoration();
    if (isSelected) {
      boxDecoration = _fullDecoration();
    }

    return Container(
      decoration: boxDecoration,
      padding: EdgeInsets.all(Dimensions.web.paddingStepCircle),
      child: Text(
        "$step",
        style: TextStyle(
          color: isSelected ? Style.color.marineBlue : Style.color.white,
        ),
      ),
    );
  }
}
