import 'package:flutter/material.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/widgets/confirm_button.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/go_back_button.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/next_button.dart';

class StepPageLayout extends StatelessWidget {
  const StepPageLayout(
      {Key? key,
      required this.content,
      required this.haveNextStepButton,
      required this.haveGoBackButton,
      required this.haveConfirmButton})
      : super(key: key);

  final Widget content;
  final bool haveNextStepButton;
  final bool haveGoBackButton;
  final bool haveConfirmButton;

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonRow = [
      haveGoBackButton ? const GoBackButton() : const SizedBox.shrink(),
      haveNextStepButton ? const NextButton() : const SizedBox.shrink(),
    ];

    // Only on Summary Page
    if (haveConfirmButton) {
      buttonRow = [
        GoBackButton(),
        ConfirmButton(),
      ];
    }

    return SizedBox(
      width: Dimensions.web.internalWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          content,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: buttonRow,
          )
        ],
      ),
    );
  }
}
