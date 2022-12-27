import 'package:flutter/material.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/utils/styles.dart';

class TotalCost extends StatelessWidget {
  const TotalCost({
    Key? key,
    required this.plan,
    required this.addOns,
    required this.total,
  }) : super(key: key);

  final Plan plan;
  final List<AddOn> addOns;
  final double total;

  String get totalCostTitleString {
    if (plan.perMonth) {
      return "Total(per month)";
    }
    return "Total(per year)";
  }

  String get totalCostString {
    if (plan.perMonth) {
      return "+\$$total/mo";
    }
    return "\$$total/yr";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.web.sumInnerBoxPadding,
      ),
      child: ListTile(
        title: Text(
          totalCostTitleString,
          style: TextStyle(
            fontSize: Style.fontSize.paragraph,
            color: Style.color.coolGray,
          ),
        ),
        trailing: Text(
          totalCostString,
          style: TextStyle(
            fontSize: Style.fontSize.costTotal,
            fontWeight: FontWeight.w700,
            color: Style.color.purplishBlue,
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
