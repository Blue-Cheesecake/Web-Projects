class Customer {
  Customer({
    this.name,
    this.email,
    this.phoneNumber,
    this.plan,
    this.addOns,
  });

  String? name;
  String? email;
  int? phoneNumber;
  Plan? plan;
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
    return "[Customer] Name: $name, Email: $email, Phone: $phoneNumber, Add Ons: $addOns";
  }
}

class Plan {
  Plan(this.name,
      this.perMonth,
      this.cost,);

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
  AddOn(this.name,
      this.cost,);

  AddOnName name;
  double cost;
}

enum AddOnName {
  onlineService,
  largerStorage,
  customizableProfile,
}
