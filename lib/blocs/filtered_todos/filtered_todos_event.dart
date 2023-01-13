part of 'filtered_todos_bloc.dart';

abstract class FilteredTodosEvent {
  const FilteredTodosEvent();

  @override
  List<Object> get props => [];
}

class CalculateFilteredTodosEvent extends FilteredTodosEvent {
  final List<Todo> filteredTodos;

  CalculateFilteredTodosEvent(this.filteredTodos);

  @override
  List<Object> get props => [filteredTodos];

  @override
  String toString() {
    return 'CalculateFilteredTodosEvent{filteredTodos: $filteredTodos}';
  }
}
