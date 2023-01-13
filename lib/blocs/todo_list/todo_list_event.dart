part of 'todo_list_bloc.dart';

@immutable
abstract class TodoListEvent {
  const TodoListEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends TodoListEvent {
  final String todoDesc;

  AddTodoEvent(this.todoDesc);

  @override
  String toString() {
    return 'AddTodoEvent{todoDesc: $todoDesc}';
  }

  @override
  List<Object> get props => [todoDesc];
}

class EditTodoEvent extends TodoListEvent {
  final String id;
  final String todoDesc;

  EditTodoEvent(this.id, this.todoDesc);

  @override
  List<Object> get props => [id, todoDesc];

  @override
  String toString() {
    return 'EditTodo{id: $id, todoDesc: $todoDesc}';
  }
}

class ToggleTodoEvent extends TodoListEvent {
  final String id;

  ToggleTodoEvent(this.id);

  @override
  List<Object> get props => [id];

  @override
  String toString() {
    return 'toggleTodo{id: $id}';
  }
}

class RemoveTodoEvent extends TodoListEvent {
  final Todo todo;

  RemoveTodoEvent(this.todo);

  @override
  String toString() {
    return 'RemoveTodo{todo: $todo}';
  }

  @override
  List<Object> get props => [todo];
}