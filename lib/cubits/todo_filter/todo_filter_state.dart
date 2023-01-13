part of 'filtered_todos_cubit.dart';

class TodoFilterState extends Equatable{
  const TodoFilterState({
    required this.filter,
  });

  factory TodoFilterState.initial(){
    return const TodoFilterState(filter: Filter.all);
  }

  @override
  List<Object> get props => [filter];
  final Filter filter;

  TodoFilterState copyWith({
    Filter? filter,
  }) {
    return TodoFilterState(
      filter: filter ?? this.filter,
    );
  }

  @override
  String toString() {
    return 'TodoFilterState{filter: $filter}';
  }
}
