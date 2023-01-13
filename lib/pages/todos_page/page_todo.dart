import 'package:flutter/material.dart';
import 'create_todo.dart';
import 'search_and_filter_todo.dart';
import 'show_todos.dart';
import 'header_todo.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            child: Column(children: [
              const TodoHeader(),
              const CreateTodo(),
              const SizedBox(height: 20),
              SearchAndFilterTodo(),
              const ShowTodos(),
            ]),
          ),
        ),
      ),
    );
  }
}

