import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.id,
    required this.title,
    required this.completed,
    required this.userId,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      userId: json['userId'],
      completed: json['completed'],
    );
  }
}

class TodoBloc extends Cubit<List<Todo>> {
  TodoBloc() : super([]);

  Future<void> fetchTodos() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonTodos = jsonDecode(response.body);
      final todos = jsonTodos.map((json) => Todo.fromJson(json)).toList();
      emit(todos);
    } else {
      print('Failed to load todos');
      throw Exception('Failed to load todos');
    }
  }
}