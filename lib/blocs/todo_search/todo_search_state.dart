part of 'todo_search_bloc.dart';

class TodoSearchState {
  final String searchTerm;

  TodoSearchState({required this.searchTerm});

  factory TodoSearchState.initial(){
    return TodoSearchState(searchTerm: '');
  }

  @override
  List<Object> get props => [searchTerm];

  @override
  String toString() {
    return 'TodoSearchState{searchTerm: $searchTerm}';
  }

  TodoSearchState copyWith({
    String? searchTerm,
  }) {
    return TodoSearchState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }
}
