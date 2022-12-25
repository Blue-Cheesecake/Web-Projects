part of 'customer_info_bloc.dart';

class CustomerInfoState extends Equatable {
  final Customer customer;

  const CustomerInfoState(this.customer);

  CustomerInfoState changePersonalInfo(
    String name,
    String email,
    int phoneNumber,
  ) {
    Customer modifiedCustomer = customer.clone();
    modifiedCustomer.name = name;
    modifiedCustomer.email = email;
    modifiedCustomer.phoneNumber = phoneNumber;

    return CustomerInfoState(modifiedCustomer);
  }

  CustomerInfoState selectPlan(Plan newPlan) {
    Customer modifiedCustomer = customer.clone();
    modifiedCustomer.plan = newPlan;
    return CustomerInfoState(modifiedCustomer);
  }

  CustomerInfoState addNewAddOn(AddOn newAddOn) {
    Customer modifiedCustomer = customer.clone();
    modifiedCustomer.addOns ??= [];
    modifiedCustomer.addOns!.add(newAddOn);
    return CustomerInfoState(modifiedCustomer);
  }

  CustomerInfoState removeAddOn(AddOn addOn) {
    Customer modifiedCustomer = customer.clone();
    if (modifiedCustomer.addOns == null || modifiedCustomer.addOns!.isEmpty) {
      throw Exception(
        "(BLoC: CustomerInfoState -> removeAddOn) Cannot remove addon while the list is empty or null",
      );
    }
    modifiedCustomer.addOns?.remove(addOn);
    return CustomerInfoState(modifiedCustomer);
  }

  @override
  List<Object> get props => [customer];
}
