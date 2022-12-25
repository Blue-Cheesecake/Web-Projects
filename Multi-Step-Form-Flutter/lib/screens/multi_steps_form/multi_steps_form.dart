import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/add_ons/add_ons.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/personal_info/personal_info.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/select_plan/select_plan.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/summary/summary.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}
