 part of 'filtered_todos_bloc.dart';

 class FilteredTodosState extends Equatable {
   final List<Todo> filteredTodos;
   const FilteredTodosState({required this.filteredTodos});

   factory FilteredTodosState.initial(){
     return const FilteredTodosState(filteredTodos: []);
   }

   @override
   // TODO: implement props
   List<Object?> get props => [filteredTodos];

   @override
   String toString() {
     return 'FilteredTodoState{filteredTodos: $filteredTodos}';
   }

   FilteredTodosState copyWith({
     List<Todo>? filteredTodos,
   }) {
     return FilteredTodosState(
       filteredTodos: filteredTodos ?? this.filteredTodos,
     );
   }
 }