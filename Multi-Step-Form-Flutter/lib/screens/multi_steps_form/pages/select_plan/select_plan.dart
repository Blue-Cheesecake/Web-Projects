import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/select_plan/widgets/option_switch.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/select_plan/widgets/plan_box.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_page_layout.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_subtitle_text.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_title_text.dart';

class SelectPlan extends StatelessWidget {
  const SelectPlan({Key? key}) : super(key: key);

  Widget _content(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepTitleText("Select your plan"),
        SizedBox(height: Dimensions.web.mediumHeightSpacing),
        const StepSubtitleText(
            "You have the option of monthly or yearly billing"),
        SizedBox(height: Dimensions.web.enormousHeightSpacing),
        BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
          builder: (context, state) {
            final currentPlan = state.customer.plan;
            final c = context.read<CustomerInfoBloc>();

            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlanBox(
                  plan: Plan(PlanName.arcade, currentPlan.perMonth),
                  isSelected: PlanName.arcade == currentPlan.name,
                  switchPlan: (newPlan) {
                    c.add(CustomerInfoEventSelectPlan(newPlan));
                  },
                ),
                PlanBox(
                  plan: Plan(PlanName.advanced, currentPlan.perMonth),
                  isSelected: PlanName.advanced == currentPlan.name,
                  switchPlan: (newPlan) {
                    c.add(CustomerInfoEventSelectPlan(newPlan));
                  },
                ),
                PlanBox(
                  plan: Plan(PlanName.pro, currentPlan.perMonth),
                  isSelected: PlanName.pro == currentPlan.name,
                  switchPlan: (newPlan) {
                    c.add(CustomerInfoEventSelectPlan(newPlan));
                  },
                ),
              ],
            );
          },
        ),
        SizedBox(height: Dimensions.web.enormousHeightSpacing),
        const OptionSwitch(),
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
