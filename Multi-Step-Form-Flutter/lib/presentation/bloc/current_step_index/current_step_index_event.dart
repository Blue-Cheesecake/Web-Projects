part of 'current_step_index_bloc.dart';

abstract class CurrentStepIndexEvent extends Equatable {
  const CurrentStepIndexEvent();

  @override
  List<Object> get props => [];
}

class CurrentStepIndexEventNext extends CurrentStepIndexEvent {}

class CurrentStepIndexEventPrevious extends CurrentStepIndexEvent {}

class CurrentStepIndexEventJump extends CurrentStepIndexEvent {
  const CurrentStepIndexEventJump(this.newVal);

  final int newVal;

  @override
  List<Object> get props => [newVal];
}
