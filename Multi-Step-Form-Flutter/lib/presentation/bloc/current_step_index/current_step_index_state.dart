part of 'current_step_index_bloc.dart';

class CurrentStepIndexState extends Equatable {
  final int currentStepIndex;

  const CurrentStepIndexState(this.currentStepIndex);

  CurrentStepIndexState copyWith(int? currentStepIndex) {
    return CurrentStepIndexState(currentStepIndex ?? 0);
  }

  @override
  List<Object> get props => [currentStepIndex];
}
