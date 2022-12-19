part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
    int number;

    CounterState(this.number);
}

class CounterInitial extends CounterState {
    CounterInitial() : super(0);
}

class CounterManger extends CounterState {
    CounterManger(number) : super(number);
}
