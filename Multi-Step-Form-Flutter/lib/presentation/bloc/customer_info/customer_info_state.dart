part of 'customer_info_bloc.dart';

abstract class CustomerInfoState extends Equatable {
  const CustomerInfoState();
}

class CustomerInfoInitial extends CustomerInfoState {
  @override
  List<Object> get props => [];
}
