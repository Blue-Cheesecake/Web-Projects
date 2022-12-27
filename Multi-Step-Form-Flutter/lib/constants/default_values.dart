import 'package:multi_step_form/models/customer.dart';

class DefaultValues {
  static const initialStepIndex = 0;
  static const stepIndexOfSelectPlan = 1;
  static final customer = Customer(
    plan: Plan(
      PlanName.arcade,
      true,
    ),
    addOns: [],
  );

  /// For testing
  ///
  static final fullInfoCustomer = Customer(
    name: "Sinut Wattanarporn",
    email: "sinut.wat@student.mahidol.ac.th",
    phoneNumber: "0827993922",
    plan: Plan(PlanName.arcade, true),
    addOns: [
      AddOn(AddOnName.onlineService, true),
      AddOn(AddOnName.largerStorage, true),
    ],
  );
}
