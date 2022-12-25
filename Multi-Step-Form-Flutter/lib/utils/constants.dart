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

class AvailableAddOns {
  static const Map<AddOnName, double> costPerMonth = {
    AddOnName.onlineService: 1.0,
    AddOnName.largerStorage: 2.0,
    AddOnName.customizableProfile: 2.0,
  };

  static const Map<AddOnName, double> costPerYear = {
    AddOnName.onlineService: 10.0,
    AddOnName.largerStorage: 20.0,
    AddOnName.customizableProfile: 20.0,
  };
}
