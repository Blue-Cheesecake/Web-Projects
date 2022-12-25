import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'customer_info_event.dart';
part 'customer_info_state.dart';

class CustomerInfoBloc extends Bloc<CustomerInfoEvent, CustomerInfoState> {
  CustomerInfoBloc() : super(CustomerInfoInitial()) {
    on<CustomerInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
