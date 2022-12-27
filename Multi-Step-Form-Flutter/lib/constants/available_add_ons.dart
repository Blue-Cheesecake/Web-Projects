import 'dart:core';

import 'package:multi_step_form/models/customer.dart';

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

  static final List<AddOn> listPerMonth = [
    AddOn(AddOnName.onlineService, true),
    AddOn(AddOnName.largerStorage, true),
    AddOn(AddOnName.customizableProfile, true),
  ];

  static final List<AddOn> listPerYear = [
    AddOn(AddOnName.onlineService, false),
    AddOn(AddOnName.largerStorage, false),
    AddOn(AddOnName.customizableProfile, false),
  ];
  

}
