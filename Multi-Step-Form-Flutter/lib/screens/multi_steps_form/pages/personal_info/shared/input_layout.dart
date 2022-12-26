import 'package:flutter/material.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/utils/styles.dart';

class InputLayout extends StatefulWidget {
  const InputLayout(
      {Key? key,
      required this.txtTitle,
      required this.placeholder,
      required this.changeInfoBLoC})
      : super(key: key);

  final String txtTitle;
  final String placeholder;
  final Function(String) changeInfoBLoC;

  OutlineInputBorder _decoratedOutlineInputBorder(Color currColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(Dimensions.web.inputRadius),
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: currColor,
        width: Dimensions.web.inputWidth,
      ),
    );
  }

  @override
  State<InputLayout> createState() => _InputLayoutState();
}

class _InputLayoutState extends State<InputLayout> {
  final TextEditingController _controller = TextEditingController();
  var firstEnter = true;

  String? get _errorText {
    if (_controller.text.isEmpty && !firstEnter) {
      return "This field is required";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Input Title
        ///
        Text(
          widget.txtTitle,
          style: TextStyle(
            fontSize: Style.fontSize.paragraph,
            fontWeight: FontWeight.w500,
            color: Style.color.marineBlue,
          ),
        ),

        SizedBox(height: Dimensions.web.mediumHeightSpacing),

        TextField(
          cursorColor: Style.color.purplishBlue,
          controller: _controller,
          onChanged: (value) {
            firstEnter = false;

            widget.changeInfoBLoC(value);
          },
          decoration: InputDecoration(
            hintText: widget.placeholder,
            hintStyle: TextStyle(
              fontSize: Style.fontSize.paragraph,
              fontWeight: FontWeight.w500,
              color: Style.color.coolGray,
            ),
            focusedBorder:
                widget._decoratedOutlineInputBorder(Style.color.purplishBlue),
            enabled: true,
            enabledBorder:
                widget._decoratedOutlineInputBorder(Style.color.lightGray),
            focusedErrorBorder:
                widget._decoratedOutlineInputBorder(Style.color.strawberryRed),
            errorBorder:
                widget._decoratedOutlineInputBorder(Style.color.strawberryRed),
            errorText: _errorText,
          ),
        )
      ],
    );
  }
}
