class Customer {
  Customer(
    this.name,
    this.email,
    this.phoneNumber,
    this.plan,
    this.addOns,
  );

  String? name;
  String? email;
  int? phoneNumber;
  Plan? plan;
  List<AddOn>? addOns;
}

class Plan {
  Plan(
    this.name,
    this.perMonth,
    this.cost,
  );

  PlanName name;
  bool perMonth;
  double cost;
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
