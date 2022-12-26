import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/utils/styles.dart';

class OptionSwitch extends StatelessWidget {
  const OptionSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.web.internalWidth,
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.web.planBoxSwitchVerticalPadding,
      ),
      decoration: BoxDecoration(
        color: Style.color.alabaster,
      ),
      child: BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
        builder: (context, state) {
          final currPlan = state.customer.plan;

          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Monthly",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Style.fontSize.paragraph,
                  color: currPlan.perMonth
                      ? Style.color.marineBlue
                      : Style.color.coolGray,
                ),
              ),
              SizedBox(width: Dimensions.web.largeHeightSpacing),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: FlutterSwitch(
                  value: !state.customer.plan.perMonth,
                  width: Dimensions.web.planSwitchWidth,
                  height: Dimensions.web.planSwitchHeight,
                  padding: Dimensions.web.planSwitchPadding,
                  inactiveColor: Style.color.marineBlue,
                  activeColor: Style.color.marineBlue,
                  onToggle: (value) {
                    context
                        .read<CustomerInfoBloc>()
                        .add(CustomerInfoEventSelectPlan(Plan(
                          currPlan.name,
                          !currPlan.perMonth,
                        )));
                  },
                ),
              ),
              SizedBox(width: Dimensions.web.largeHeightSpacing),
              Text(
                "Yearly",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Style.fontSize.paragraph,
                  color: !currPlan.perMonth
                      ? Style.color.marineBlue
                      : Style.color.coolGray,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
