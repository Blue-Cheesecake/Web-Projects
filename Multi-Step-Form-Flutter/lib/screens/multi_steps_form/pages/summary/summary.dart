import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/widgets/add_ons_list.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/widgets/plan_summary.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/widgets/total_cost.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_page_layout.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_subtitle_text.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_title_text.dart';
import 'package:multi_step_form/utils/styles.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const StepTitleText("Finishing up"),
        SizedBox(height: Dimensions.web.mediumHeightSpacing),
        const StepSubtitleText(
            "Double-check everything looks OK before confirming."),
        SizedBox(height: Dimensions.web.largeHeightSpacing * 1.5),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.web.sumInnerBoxPadding,
          ),
          decoration: BoxDecoration(
            color: Style.color.alabaster,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimensions.web.planBoxBorderRadius),
            ),
          ),
          child: Column(
            children: [
              const PlanSummary(),
              Divider(color: Style.color.lightGray, thickness: 1.25),
              const AddOnsList(),
            ],
          ),
        ),
        SizedBox(height: Dimensions.web.mediumHeightSpacing),
        BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
          builder: (context, state) {
            return TotalCost(
              plan: state.customer.plan,
              addOns: state.customer.addOns,
              total: state.customer.totalCost,
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StepPageLayout(
      content: _content(context),
      haveNextStepButton: false,
      haveGoBackButton: true,
      haveConfirmButton: true,
    );
  }
}
