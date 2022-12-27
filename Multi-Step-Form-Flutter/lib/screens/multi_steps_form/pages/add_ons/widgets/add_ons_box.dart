import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/utils/styles.dart';

class AddOnsBox extends StatelessWidget {
  const AddOnsBox({Key? key,
    required this.addOn,
    required this.isSelected,
    required this.addAddOn,
    required this.removeAddOn})
      : super(key: key);

  final AddOn addOn;
  final bool isSelected;
  final Function(AddOn) addAddOn;
  final Function(AddOn) removeAddOn;

  String _getPriceString(AddOn addOn) {
    if (addOn.perMonth) {
      return "+${addOn.cost}/mo";
    }
    return "+${addOn.cost}/yr";
  }

  BoxDecoration _selectedDecoration() {
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

  BoxDecoration _unselectedDecoration() {
    return BoxDecoration(
      color: Style.color.alabaster,
      borderRadius: BorderRadius.all(
        Radius.circular(Dimensions.web.planBoxBorderRadius),
      ),
      border: Border.all(
        color: Style.color.lightGray,
        width: Dimensions.web.planBoxBorderWidth,
      ),
    );
  }

  Widget _checkWidget() {
    return Container(
      width: Dimensions.web.addonsCheckBoxSquare,
      height: Dimensions.web.addonsCheckBoxSquare,
      decoration: BoxDecoration(
        color: Style.color.purplishBlue,
        border: Border.all(
          color: Style.color.purplishBlue,
          width: Dimensions.web.planBoxBorderWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SvgPicture.asset(
          "assets/images/icon-checkmark.svg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _uncheckWidget() {
    return Container(
      width: Dimensions.web.addonsCheckBoxSquare,
      height: Dimensions.web.addonsCheckBoxSquare,
      decoration: BoxDecoration(
        color: Style.color.alabaster,
        border: Border.all(
          color: Style.color.lightGray,
          width: Dimensions.web.planBoxBorderWidth,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ListTile
    final content = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Leading
            //
            isSelected ? _checkWidget() : _uncheckWidget(),

            SizedBox(width: Dimensions.web.addOnsBoxPadding),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                //
                Text(
                  addOn.title,
                  style: TextStyle(
                    fontSize: Style.fontSize.largeParagraph * 1.1,
                    fontWeight: FontWeight.w500,
                    color: Style.color.marineBlue,
                  ),
                ),

                SizedBox(height: Dimensions.web.addOnsBoxSpacingTitle),

                // Subtitle
                //
                Text(
                  addOn.subtitle,
                  style: TextStyle(
                    fontSize: Style.fontSize.paragraph,
                    color: Style.color.coolGray,
                  ),
                ),
              ],
            ),
          ],
        ),

        /// Trailing
        ///
        Text(
          _getPriceString(addOn),
          style: TextStyle(
            fontSize: Style.fontSize.largeParagraph,
            fontWeight: FontWeight.w500,
            color: Style.color.purplishBlue,
          ),
        ),
      ],
    );

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isSelected) {
            removeAddOn(addOn);
          } else {
            addAddOn(addOn);
          }
        },
        child: Container(
          width: Dimensions.web.internalWidth,
          height: Dimensions.web.addonsBoxHeight,
          decoration:
          isSelected ? _selectedDecoration() : _unselectedDecoration(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.web.addOnsBoxPadding,
            ),
            child: content,
          ),
        ),
      ),
    );
  }
}
