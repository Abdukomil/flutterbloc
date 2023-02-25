part of 'counter_bloc.dart';


class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];

  Map<String, dynamic> toMap() {
    return {
      'counterValue': this.counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
    );
  }
}

class CounterInitial extends CounterState {
  CounterInitial(): super(counterValue: 0);
}

class IncrementState extends CounterState{
  IncrementState(int incrementValue):super(counterValue: incrementValue);
}
class DecrementState extends CounterState{
  DecrementState(int decrementValue):super(counterValue: decrementValue);
}