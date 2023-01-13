part of 'todo_search_bloc.dart';

@immutable
abstract class TodoSearchEvent {
  const TodoSearchEvent();

  @override
  List<Object> get props => [];
}

class setSearchTermEvent extends TodoSearchEvent {
  final String newSearchTerm;

  setSearchTermEvent({required this.newSearchTerm});

  @override
  String toString() {
    return 'setSearchTermEvent{newSearchTerm: $newSearchTerm}';
  }

  @override
  List<Object> get props => [newSearchTerm];
}
