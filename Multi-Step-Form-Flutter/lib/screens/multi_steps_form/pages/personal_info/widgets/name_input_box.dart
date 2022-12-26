import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/personal_info/shared/input_layout.dart';

class NameInputBox extends StatelessWidget {
  const NameInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
      builder: (context, state) {
        return InputLayout(
          txtTitle: "Name",
          placeholder: "e.g. Stephen King",
          changeInfoBLoC: (val) {
            context
                .read<CustomerInfoBloc>()
                .add(CustomerInfoEventChangeInfo(name: val));
          },
        );
      },
    );
  }
}
