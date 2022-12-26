import 'package:flutter/material.dart';
import 'package:multi_step_form/constants/pages/personal_info/personal_info_values.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_page_layout.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_subtitle_text.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_title_text.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  Widget _content(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepTitleText(PersonalInfoValues.title),
        SizedBox(height: Dimensions.web.heightSpacing),
        const StepSubtitleText(PersonalInfoValues.subtitle),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StepPageLayout(
      content: _content(context),
      haveNextStepButton: true,
      haveGoBackButton: false,
      haveConfirmButton: false,
    );
  }
}
