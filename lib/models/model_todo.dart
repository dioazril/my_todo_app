import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';

Uuid uuid = const Uuid();
enum Filter {
  all,
  active,
  completed,
}

class Todo extends Equatable{
  final String id;
  final String desc;
  final bool completed;

  Todo({
    String? id,
    required this.desc,
    this.completed = false,
  }) : id = id ?? uuid.v4();

  @override
  List<Object?> get props => [id, desc, completed];

  @override
  String toString() {
    return 'Todo{id: $id, desc: $desc, completed: $completed}';
  }
}
