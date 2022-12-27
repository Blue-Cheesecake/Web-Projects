import 'package:multi_step_form/constants/available_add_ons.dart';
import 'package:multi_step_form/constants/available_plans.dart';

class Customer {
  Customer(
      {this.name,
      this.email,
      this.phoneNumber,
      required this.plan,
      required this.addOns});

  String? name;
  String? email;
  String? phoneNumber;
  Plan plan;
  List<AddOn> addOns = [];

  Customer clone() {
    return Customer(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      plan: plan,
      addOns: addOns,
    );
  }

  bool isMissingPersonalInfo() {
    return name == null || email == null || phoneNumber == null;
  }

  @override
  String toString() {
    return "[Customer] Name: $name, Email: $email, Phone: $phoneNumber, Add Ons: $addOns, Plan: $plan";
  }
}

class Plan {
  Plan(
    this.name,
    this.perMonth,
  );

  PlanName name;
  bool perMonth;

  double get cost {
    if (perMonth) {
      return AvailablePlans.costPerMonth[name]!;
    }
    return AvailablePlans.costPerYear[name]!;
  }

  String get imagePath {
    if (name == PlanName.arcade) {
      return "assets/images/icon-arcade.svg";
    }
    if (name == PlanName.advanced) {
      return "assets/images/icon-advanced.svg";
    }

    return "assets/images/icon-pro.svg";
  }

  @override
  String toString() {
    return "${name.toString()} ${perMonth ? "Monthly" : "Yearly"}";
  }
}

enum PlanName {
  arcade,
  advanced,
  pro,
}

class AddOn {
  AddOn(
    this.name,
    this.perMonth,
  );

  AddOnName name;
  bool perMonth;

  String get subtitle {
    if (name == AddOnName.onlineService) {
      return "Access to Multiplayer games";
    }
    if (name == AddOnName.largerStorage) {
      return "Extra 1TB of cloud save";
    }
    if (name == AddOnName.customizableProfile) {
      return "Custom theme on your profile";
    }
    return "Subtitle is not available";
  }

  double get cost {
    if (perMonth) {
      return AvailableAddOns.costPerMonth[name]!;
    }
    return AvailableAddOns.costPerYear[name]!;
  }

  String get title {
    if (name == AddOnName.onlineService) {
      return "Online service";
    }
    if (name == AddOnName.largerStorage) {
      return "Larger storage";
    }
    if (name == AddOnName.customizableProfile) {
      return "Customizable profile";
    }
    return "Not available";
  }

  @override
  bool operator ==(Object other) {
    AddOn castedOther = other as AddOn;
    return name.name == castedOther.name.name;
  }

  @override
  int get hashCode {
    return name.name.hashCode + perMonth.hashCode;
  }

  @override
  String toString() {
    var result = "$title ";
    if (perMonth) {
      result += "Monthly";
    } else {
      result += "Yearly";
    }
    return result;
  }
}

enum AddOnName {
  onlineService,
  largerStorage,
  customizableProfile,
}
