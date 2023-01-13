import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../models/model_todo.dart';
part 'todo_list_event.dart';
part 'todo_list_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc() : super(TodoListState.initial()) {
    on<AddTodoEvent>(_addTodo);
    on<EditTodoEvent>(_editTodo);
    on<ToggleTodoEvent>(_toggleTodo);
    on<RemoveTodoEvent>(_removeTodo);
  }
  void _addTodo(AddTodoEvent event, Emitter<TodoListState> emit){
    final newTodo = Todo(desc: event.todoDesc);
    final newTodos = [...state.todos, newTodo];
    emit(state.copyWith(todos: newTodos));
  }

  void _editTodo(EditTodoEvent event, Emitter<TodoListState> emit){
    final newTodos = state.todos.map((Todo todo){
      if (todo.id == event.id){
        return Todo(id: event.id, desc: event.todoDesc, completed: todo.completed,);
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: newTodos));
  }
  void _toggleTodo(ToggleTodoEvent event, Emitter<TodoListState> emit){
    final newTodos = state.todos.map((Todo todo){
      if (todo.id == event.id){
        return Todo(id: event.id, desc: todo.desc, completed: !todo.completed,);
      }
      return todo;
    }).toList();
    emit(state.copyWith(todos: newTodos));
    print(state);
  }

  void _removeTodo(RemoveTodoEvent event, Emitter<TodoListState> emit) {
    final newTodos = state.todos.where((Todo t) => t.id != event.todo.id).toList();
    emit(state.copyWith(todos: newTodos));
  }
}
