import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/personal_info/shared/input_layout.dart';
import 'package:multi_step_form/utils/utilities.dart';

class EmailInputBox extends StatelessWidget {
  const EmailInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
      builder: (context, state) {
        return InputLayout(
          txtTitle: "Email Address",
          placeholder: "e.g. stephenking@lorem.com",
          initialValue: state.customer.email,
          changeInfoBLoC: (val) {
            context
                .read<CustomerInfoBloc>()
                .add(CustomerInfoEventChangeInfo(email: val));
          },
          additionalValidator: Utilities.isValidEmail,
          additionalErrorText: "This might not be a valid email",
        );
      },
    );
  }
}
