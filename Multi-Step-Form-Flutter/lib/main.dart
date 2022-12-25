import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/multi_steps_form.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final customerInfoBloc = BlocProvider<CustomerInfoBloc>(
      create: (context) => CustomerInfoBloc(),
    );

    return MultiBlocProvider(
      providers: [
        customerInfoBloc,
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: ThemeData(fontFamily: "Ubuntu"),
        debugShowCheckedModeBanner: false,
        routes: {
          MultiStepsForm.routeName: (context) => const MultiStepsForm(),
        },
        initialRoute: MultiStepsForm.routeName,
      ),
    );
  }
}
