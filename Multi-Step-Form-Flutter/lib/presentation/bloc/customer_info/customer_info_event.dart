part of 'customer_info_bloc.dart';

abstract class CustomerInfoEvent extends Equatable {
  const CustomerInfoEvent();
}

class CustomerInfoEventChangeInfo extends CustomerInfoEvent {
  final String? name;
  final String? email;
  final String? phoneNumber;

  const CustomerInfoEventChangeInfo({this.name, this.email, this.phoneNumber});

  @override
  List<Object?> get props => [name, email, phoneNumber];
}

class CustomerInfoEventSelectPlan extends CustomerInfoEvent {
  final Plan newPlan;

  const CustomerInfoEventSelectPlan(this.newPlan);

  @override
  List<Object?> get props => [newPlan];
}

class CustomerInfoEventAddAddOn extends CustomerInfoEvent {
  final AddOn newAddOn;

  const CustomerInfoEventAddAddOn(this.newAddOn);

  @override
  List<Object?> get props => [newAddOn];
}

class CustomerInfoEventRemoveAddOn extends CustomerInfoEvent {
  final AddOn addOn;

  const CustomerInfoEventRemoveAddOn(this.addOn);

  @override
  List<Object?> get props => [addOn];
}
