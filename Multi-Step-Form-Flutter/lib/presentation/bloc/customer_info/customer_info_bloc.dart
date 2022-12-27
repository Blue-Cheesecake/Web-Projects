import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:multi_step_form/constants/default_values.dart';
import 'package:multi_step_form/models/customer.dart';

part 'customer_info_event.dart';
part 'customer_info_state.dart';

class CustomerInfoBloc extends Bloc<CustomerInfoEvent, CustomerInfoState> {
  CustomerInfoBloc() : super(CustomerInfoState(DefaultValues.customer)) {
    on<CustomerInfoEventChangeInfo>((event, emit) {
      // The state derives the way to change value
      // The event derives the parameters
      emit(state.changePersonalInfo(
        event.name ?? state.customer.name,
        event.email ?? state.customer.email,
        event.phoneNumber ?? state.customer.phoneNumber,
      ));

      print(state.customer);
    });

    on<CustomerInfoEventSelectPlan>((event, emit) {
      emit(state.selectPlan(event.newPlan));

      print(state.customer);
    });

    on<CustomerInfoEventSwapPlan>((event, emit) {
      emit(state.swapPlan());

      print(state.customer);
    });

    on<CustomerInfoEventAddAddOn>((event, emit) {
      emit(state.addNewAddOn(event.newAddOn));

      print(state.customer);
    });

    on<CustomerInfoEventRemoveAddOn>((event, emit) {
      emit(state.removeAddOn(event.addOn));

      print(state.customer);
    });
  }
}
