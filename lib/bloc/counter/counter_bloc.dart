import 'package:bloc/bloc.dart';
import 'package:learning_bloc/bloc/counter/counter_event.dart';
import 'package:learning_bloc/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncreamentCounter>(_increment);
    on<DecreamentCounter>(_decrement);
  }
  void _increment(IncreamentCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter+1));
  }

  void _decrement(DecreamentCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter-1));
  }
}
