import 'package:multi_step_form/constants/available_plans.dart';

class Customer {
  Customer({
    this.name,
    this.email,
    this.phoneNumber,
    required this.plan,
    this.addOns,
  });

  String? name;
  String? email;
  int? phoneNumber;
  Plan plan;
  List<AddOn>? addOns = [];

  Customer clone() {
    return Customer(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      plan: plan,
      addOns: addOns,
    );
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
    this.cost,
  );

  AddOnName name;
  double cost;
}

enum AddOnName {
  onlineService,
  largerStorage,
  customizableProfile,
}
