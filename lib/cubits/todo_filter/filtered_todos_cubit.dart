import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/model_todo.dart';

part 'todo_filter_state.dart';

class TodoFilterCubit extends Cubit<TodoFilterState> {
  TodoFilterCubit() : super(TodoFilterState.initial());

  void changeFilter(Filter newFilter){
    emit(state.copyWith(filter: newFilter));
  }
}
