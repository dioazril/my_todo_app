import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../models/model_todo.dart';

part 'filtered_todos_state.dart';

class FilteredTodosCubit extends Cubit<FilteredTodosState> {
  final List<Todo> initialTodos;

  FilteredTodosCubit({
    required this.initialTodos,
  }) : super(FilteredTodosState(filteredTodos: initialTodos));

  void setFilteredTodos(Filter filter, List<Todo> todos, String searchTerm) {
    List<Todo> filteredTodos;

    switch (filter) {
      case Filter.active:
        filteredTodos = todos.where((Todo todo) => !todo.completed).toList();
        break;

      case Filter.completed:
        filteredTodos = todos.where((Todo todo) => todo.completed).toList();
        break;

      case Filter.all:
      default:
        filteredTodos = todos;
        break;
    }

    if (searchTerm.isNotEmpty) {
      filteredTodos = filteredTodos
          .where((Todo todo) => todo.desc.toLowerCase().contains(searchTerm))
          .toList();
    }

    emit(state.copyWith(filteredTodos: filteredTodos));
  }
}
