import 'package:flutter/material.dart';
import 'package:lista_tarefas/pages/detail_screen.dart';
import 'class/todo.dart';

void main() {
  runApp(TodosScreen());
}

class TodosScreen extends StatelessWidget {
  TodosScreen({super.key});
  
  final todos = List.generate(20,
  (index) => Todo(
    'Todo $index',
    'A description of what needs to be done for Todo $index'
    )
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(todo: todos[index])
                  )
                );
              }
            );
          },
         ),
      ),
    );
  }
}
