import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_add_ons.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_personal_info.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_select_plan.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_summary.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/shared/i_button.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/shared/i_main_card.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/shared/i_sidebar.dart';

class Dimensions {
  static final Web web = Web();
}

class Web
    implements
        IMainCard,
        ISideBar,
        IPersonalInfo,
        IAddOns,
        ISelectPlan,
        ISummary,
        IButton {
  @override
  double cardWidth = 900.0;

  @override
  double cardHeight = 630.0;

  @override
  double paddingAround = 15.0;

  @override
  double internalWidth = 500.0;

  @override
  double largeHeightSpacing = 25.0;

  @override
  double mediumHeightSpacing = 10.0;

  @override
  double paddingSideBar = 20.0;

  @override
  double sideBarWidth = 250.0;

  @override
  double addonsBoxHeight = 30.0;

  @override
  double planBoxHeight = 35.0;

  @override
  double planBoxWidth = 20.0;

  @override
  double sumInnerBoxPadding = 20.0;

  @override
  double paddingStepCircle = 13.0;

  @override
  double marginBottomTitle = 5;

  @override
  double horizontalPadButton = 24.5;

  @override
  double verticalPadButton = 22.5;

  @override
  double inputRadius = 8.0;

  @override
  double inputWidth = 1.3;
}
