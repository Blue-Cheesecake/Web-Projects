import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/utils/styles.dart';

class AddOnsList extends StatelessWidget {
  const AddOnsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
      builder: (context, state) {
        return Column(
          children: state.customer.addOns.map((addOn) {
            return ListTile(
              title: Text(
                addOn.title,
                style: TextStyle(
                  fontSize: Style.fontSize.paragraph,
                  color: Style.color.coolGray,
                ),
              ),
              trailing: Text(
                addOn.costString,
                style: TextStyle(
                  fontSize: Style.fontSize.paragraph,
                  fontWeight: FontWeight.w500,
                  color: Style.color.buttonHover,
                ),
              ),
              contentPadding: EdgeInsets.zero,
            );
          }).toList(),
        );
      },
    );
  }
}
