import 'package:flutter/material.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/utils/styles.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  // TODO: Display success frame after pressing confirm.
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: Dimensions.web.verticalPadButton,
            horizontal: Dimensions.web.horizontalPadButton,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Style.color.purplishBlue),
        overlayColor: MaterialStateProperty.all(Style.color.pastelBlue),
      ),
      child: Text(
        "Confirm",
        style: TextStyle(
          fontSize: Style.fontSize.paragraph,
          color: Style.color.alabaster,
        ),
      ),
    );
  }
}
