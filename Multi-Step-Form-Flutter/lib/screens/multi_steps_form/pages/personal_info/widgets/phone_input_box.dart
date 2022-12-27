import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/personal_info/shared/input_layout.dart';
import 'package:multi_step_form/utils/utilities.dart';

class PhoneInputBox extends StatelessWidget {
  const PhoneInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
      builder: (context, state) {
        return InputLayout(
          txtTitle: "Phone Number",
          placeholder: "e.g. +1 234 567 890",
          initialValue: state.customer.phoneNumber?.toString(),
          changeInfoBLoC: (val) {
            // remove all space in string
            try {
              String phoneNumber = val.replaceAll(" ", "");
              context
                  .read<CustomerInfoBloc>()
                  .add(CustomerInfoEventChangeInfo(phoneNumber: phoneNumber));
            } catch (exception) {
              print("An error occur: Cannot convert input");
              print(exception.toString());
            }
          },
          additionalValidator: Utilities.isValidPhoneNumber,
          additionalErrorText: "This might not be a valid phone number",
        );
      },
    );
  }
}
