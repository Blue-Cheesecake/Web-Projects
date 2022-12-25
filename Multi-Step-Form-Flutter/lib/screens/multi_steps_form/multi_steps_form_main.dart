import 'package:flutter/material.dart';

class MultiStepsFormMain extends StatefulWidget {
  const MultiStepsFormMain({Key? key}) : super(key: key);

  static const String routeName = "/multi_steps_form";

  @override
  State<MultiStepsFormMain> createState() => _MultiStepsFormMainState();
}

class _MultiStepsFormMainState extends State<MultiStepsFormMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }
}
