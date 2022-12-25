import 'package:flutter/material.dart';
import 'package:multi_step_form/screens/multi_steps_form/multi_steps_form_main.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: "Ubuntu"),
      debugShowCheckedModeBanner: false,
      routes: {
        MultiStepsFormMain.routeName: (context) => MultiStepsFormMain(),
      },
      initialRoute: MultiStepsFormMain.routeName,
    );
  }
}
