import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/presentation/bloc/current_step_index/current_step_index_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/add_ons/add_ons.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/personal_info/personal_info.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/select_plan/select_plan.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/summary.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/sidebar/sidebar.dart';
import 'package:multi_step_form/utils/styles.dart';

class MultiStepsForm extends StatefulWidget {
  const MultiStepsForm({Key? key}) : super(key: key);

  static const String routeName = "/multi_steps_form";

  @override
  State<MultiStepsForm> createState() => _MultiStepsFormState();
}

class _MultiStepsFormState extends State<MultiStepsForm> {
  final pageSequence = [
    PersonalInfo(),
    SelectPlan(),
    AddOns(),
    Summary(),
  ];

  Widget _webLayout() {
    return BlocBuilder<CurrentStepIndexBloc, CurrentStepIndexState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Sidebar(),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(Dimensions.web.paddingAround),
                child: Center(child: pageSequence[state.currentStepIndex]),
              ),
            ),
          ],
        );
      },
    );
  }

  // TODO: implement mobile layout
  Widget _mobileLayout() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // late Widget layout;
    // if (ScreenConfiguration.isMobileLayout(context)) {
    //   layout = _mobileLayout();
    // } else {
    //   layout = _webLayout();
    // }

    return Scaffold(
      backgroundColor: Style.color.magnolia,
      body: SafeArea(
        child: Center(
          child: Container(
            width: Dimensions.web.cardWidth,
            height: Dimensions.web.cardHeight,
            padding: EdgeInsets.all(Dimensions.web.paddingAround),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(Dimensions.web.planBoxBorderRadius),
              ),
              color: Style.color.white,
            ),
            child: _webLayout(),
          ),
        ),
      ),
    );
  }
}
