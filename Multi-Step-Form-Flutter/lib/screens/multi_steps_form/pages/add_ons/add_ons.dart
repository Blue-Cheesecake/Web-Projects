import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_step_form/constants/available_add_ons.dart';
import 'package:multi_step_form/dimensions/dimensions.dart';
import 'package:multi_step_form/models/customer.dart';
import 'package:multi_step_form/presentation/bloc/customer_info/customer_info_bloc.dart';
import 'package:multi_step_form/screens/multi_steps_form/pages/add_ons/widgets/add_ons_box.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_page_layout.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_subtitle_text.dart';
import 'package:multi_step_form/screens/multi_steps_form/shared/widgets/step_title_text.dart';

class AddOns extends StatelessWidget {
  const AddOns({Key? key}) : super(key: key);

  Widget _content(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepTitleText("Pick add-ons"),
        SizedBox(height: Dimensions.web.mediumHeightSpacing),
        const StepSubtitleText("Add-ons help enhance your gaming experience."),
        SizedBox(
          height: Dimensions.web.largeHeightSpacing,
          width: double.infinity,
        ),

        // Add-ons List
        BlocBuilder<CustomerInfoBloc, CustomerInfoState>(
          builder: (context, state) {
            List<AddOn> addOnsList = AvailableAddOns.listPerYear;
            if (state.customer.plan.perMonth) {
              addOnsList = AvailableAddOns.listPerMonth;
            }

            return Column(
              children: addOnsList.map((addOn) {
                int index = addOnsList.indexOf(addOn);
                bool isSelected = state.customer.addOns.contains(addOn);
                final c = context.read<CustomerInfoBloc>();

                if (index + 1 < addOnsList.length) {
                  return Column(
                    children: [
                      AddOnsBox(
                        addOn: addOn,
                        isSelected: isSelected,
                        addAddOn: (newAddOn) {
                          c.add(CustomerInfoEventAddAddOn(newAddOn));
                        },
                        removeAddOn: (addOn) {
                          c.add(CustomerInfoEventRemoveAddOn(addOn));
                        },
                      ),
                      SizedBox(
                          height: Dimensions.web.mediumHeightSpacing * 2.0),
                    ],
                  );
                }

                return AddOnsBox(
                  addOn: addOn,
                  isSelected: isSelected,
                  addAddOn: (newAddOn) {
                    c.add(CustomerInfoEventAddAddOn(newAddOn));
                  },
                  removeAddOn: (addOn) {
                    c.add(CustomerInfoEventRemoveAddOn(addOn));
                  },
                );
              }).toList(),
            );
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return StepPageLayout(
      content: _content(context),
      haveNextStepButton: true,
      haveGoBackButton: true,
      haveConfirmButton: false,
    );
  }
}
