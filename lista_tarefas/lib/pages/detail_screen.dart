import 'package:flutter/material.dart';
import 'package:lista_tarefas/class/todo.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(todo.description),
      ),
    );
  }
}