import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/constants/default_values.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/presentation/bloc/current_step_index/current_step_index_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/utils/styles.dart';

class PlanSummary extends StatelessWidget {
  const PlanSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
      builder: (_, customerState) {
        return BlocBuilder<CurrentStepIndexBloc, CurrentStepIndexState>(
          builder: (contextStepIndex, _) {
            return ListTile(
              title: Padding(
                padding:
                    EdgeInsets.only(bottom: Dimensions.web.smallHeightSpacing),
                child: Text(
                  customerState.customer.plan.toString(),
                  style: TextStyle(
                    fontSize: Style.fontSize.planTitleSummary,
                    fontWeight: FontWeight.w700,
                    color: Style.color.buttonHover,
                  ),
                ),
              ),
              subtitle: Row(
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: InkWell(
                      onTap: () {
                        contextStepIndex.read<CurrentStepIndexBloc>().add(
                            const CurrentStepIndexEventJump(
                                DefaultValues.stepIndexOfSelectPlan));
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                          fontSize: Style.fontSize.paragraph,
                          color: Style.color.coolGray,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Text(
                customerState.customer.plan.costString,
                style: TextStyle(
                  fontSize: Style.fontSize.planTitleSummary,
                  fontWeight: FontWeight.w700,
                  color: Style.color.buttonHover,
                ),
              ),
              contentPadding: EdgeInsets.zero,
              minVerticalPadding: 0.0,
            );
          },
        );
      },
    );
  }
}
