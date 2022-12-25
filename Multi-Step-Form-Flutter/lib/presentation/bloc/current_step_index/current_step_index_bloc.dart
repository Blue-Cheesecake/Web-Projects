import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:multi_step_form/constants/default_values.dart';
import 'package:multi_step_form/constants/steps.dart';

part 'current_step_index_event.dart';
part 'current_step_index_state.dart';

class CurrentStepIndexBloc
    extends Bloc<CurrentStepIndexEvent, CurrentStepIndexState> {
  CurrentStepIndexBloc()
      : super(const CurrentStepIndexState(DefaultValues.stepIndex)) {
    on<CurrentStepIndexEventNext>((event, emit) {
      // Verify before proceed to next step
      //
      if (state.currentStepIndex + 1 >= steps.length) {
        throw IndexError(
          state.currentStepIndex + 1,
          "0 -> ${steps.length - 1}",
          "BLoC CurrentStepIndex",
        );
      }
      emit(state.copyWith(state.currentStepIndex + 1));

      print("curr: ${state.currentStepIndex}");
    });

    on<CurrentStepIndexEventPrevious>((event, emit) {
      // Verify before proceed to previous step
      //
      if (state.currentStepIndex - 1 < 0) {
        throw IndexError(
          state.currentStepIndex - 1,
          "0 -> ${steps.length - 1}",
          "BLoC CurrentStepIndex",
        );
      }

      emit(state.copyWith(state.currentStepIndex - 1));

      print("curr: ${state.currentStepIndex}");
    });
  }
}
