import 'package:multi_step_form/models/customer.dart';

class DefaultValues {
  static const stepIndex = 0;
  static final customer = Customer(
    plan: Plan(
      PlanName.arcade,
      true,
    ),
    addOns: [],
  );
}
