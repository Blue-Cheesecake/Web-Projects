import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_add_ons.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_select_plan.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/page_properties/i_summary.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/shared/i_main_card.dart';
import 'package:multi_step_form/dimensions/multi_steps_form/shared/i_sidebar.dart';

class Dimensions {
  static final Web web = Web();
}

class Web implements IMainCard, ISideBar, IAddOns, ISelectPlan, ISummary {
  @override
  double cardWidth = 900.0;

  @override
  double cardHeight = 630.0;

  @override
  double paddingAround = 15.0;

  @override
  double internalWidth = 500.0;

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
}
