part of 'todo_filter_bloc.dart';

@immutable
abstract class TodoFilterEvent extends Equatable {
  const TodoFilterEvent();

  List<Object> get props => [];
}

class ChangeFilterEvent extends TodoFilterEvent {
  final Filter newFilter;

  ChangeFilterEvent({required this.newFilter});

  @override
  String toString() {
    return 'ChangeFilterEvent{newFilter: $newFilter}';
  }

  @override
  List<Object> get props => [newFilter];
}
