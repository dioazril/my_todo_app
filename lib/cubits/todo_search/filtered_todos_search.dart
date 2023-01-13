import 'package:bloc/bloc.dart';
part 'todo_search_state.dart';

class TodoSearchCubit extends Cubit<TodoSearchState> {
  TodoSearchCubit() : super(TodoSearchState.initial());

  void setSearchTerm(String newSearchItem){
    emit(state.copyWith(searchTerm: newSearchItem));
  }
}
