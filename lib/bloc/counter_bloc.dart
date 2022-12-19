import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc();
  
  @override
  CounterState get initialState => CounterInitial();
  
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is AddCounter) {
        yield* _addNumber();
    } else if (event is RefreshCounter) {
        yield* _refreshNumber();
    } else if (event is RemoveCounter) {
        yield* _removeNumber();
    }
  }

  Stream<CounterState> _addNumber() async* {
    yield CounterManger(state.number + 1);
  }

  Stream<CounterState> _removeNumber() async* {
    yield CounterManger(state.number - 1);
  }

  Stream<CounterState> _refreshNumber() async* {
    yield CounterInitial();
  }
}
