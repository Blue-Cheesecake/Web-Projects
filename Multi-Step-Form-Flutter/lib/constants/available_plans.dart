import 'dart:core';

import 'package:multi_step_form/models/customer.dart';

class AvailablePlans {
  static const Map<PlanName, double> costPerMonth = {
    PlanName.arcade: 9.0,
    PlanName.advanced: 12.0,
    PlanName.pro: 15.0,
  };

  static const Map<PlanName, double> costPerYear = {
    PlanName.arcade: 90.0,
    PlanName.advanced: 120.0,
    PlanName.pro: 150.0,
  };
}
