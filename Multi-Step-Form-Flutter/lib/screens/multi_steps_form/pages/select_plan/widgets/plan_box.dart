import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/utils/styles.dart';

class PlanBox extends StatelessWidget {
  const PlanBox(
      {Key? key,
      required this.plan,
      required this.isSelected,
      required this.switchPlan})
      : super(key: key);

  final Plan plan;
  final bool isSelected;
  final Function(Plan) switchPlan;

  BoxDecoration _selectedBoxDecoration() {
    return BoxDecoration(
      color: Style.color.magnolia,
      borderRadius: BorderRadius.all(
        Radius.circular(Dimensions.web.planBoxBorderRadius),
      ),
      border: Border.all(
        color: Style.color.purplishBlue,
        width: Dimensions.web.planBoxBorderWidth,
      ),
    );
  }

  BoxDecoration _unSelectedBoxDecoration() {
    return BoxDecoration(
      color: Style.color.white,
      borderRadius: BorderRadius.all(
        Radius.circular(Dimensions.web.planBoxBorderRadius),
      ),
      border: Border.all(
        color: Style.color.lightGray,
        width: Dimensions.web.planBoxBorderWidth,
      ),
    );
  }

  String _capitalize(String s) {
    if (s.isEmpty) {
      return "";
    }
    if (s.length == 1) {
      return s.toUpperCase();
    }
    return s[0].toUpperCase() + s.substring(1).toLowerCase();
  }

  String _getCostString() {
    String result = "\$${plan.cost}";
    if (plan.perMonth) {
      result += "/mo";
    } else {
      result += "/yr";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => switchPlan(plan),
        child: Container(
          width: Dimensions.web.planBoxWidth,
          padding: EdgeInsets.all(Dimensions.web.paddingAround),
          decoration: isSelected
              ? _selectedBoxDecoration()
              : _unSelectedBoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(plan.imagePath),
              SizedBox(height: Dimensions.web.planBoxMarginSpacing),
              Text(
                _capitalize(plan.name.name),
                style: TextStyle(
                  fontSize: Style.fontSize.paragraph,
                  fontWeight: FontWeight.w500,
                  color: Style.color.marineBlue,
                ),
              ),
              SizedBox(height: Dimensions.web.smallHeightSpacing),
              Text(
                _getCostString(),
                style: TextStyle(
                  fontSize: Style.fontSize.paragraph,
                  color: Style.color.coolGray,
                ),
              ),
              !plan.perMonth
                  ? SizedBox(height: Dimensions.web.smallHeightSpacing)
                  : const SizedBox.shrink(),
              !plan.perMonth
                  ? Text(
                      "2 months free",
                      style: TextStyle(
                        fontSize: Style.fontSize.smallParagraph,
                        fontWeight: FontWeight.w500,
                        color: Style.color.marineBlue,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
