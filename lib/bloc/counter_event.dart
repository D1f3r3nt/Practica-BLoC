part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddCounter extends CounterEvent {}

class RefreshCounter extends CounterEvent {}

class RemoveCounter extends CounterEvent {}
