part of 'active_todo_count_bloc.dart';

abstract class ActiveTodoCountEvent {

  const ActiveTodoCountEvent();

  @override
  List<Object> get props => [];
}

class CalculateActiveTodoCountEvent extends ActiveTodoCountEvent{
  final int activeTodoCount;

  CalculateActiveTodoCountEvent(this.activeTodoCount);
  @override
  List<Object> get props => [activeTodoCount];

  @override
  String toString() {
    return 'CalculateActive{activeTodoCount: $activeTodoCount}';
  }

}