import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MyApp(),
    ),
  );
}

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<TodoProvider>(context).fetchTodos();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do',
      home: TodoList(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) {
          if (todoProvider.todos.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (context, index) {
              final Todo todo = todoProvider.todos[index];
              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(todo.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TodoDetail(todo: todo),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TodoDetail extends StatelessWidget {
  final Todo todo;

  TodoDetail({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'User:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  '${todo.userId}',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 18.0),
            Row(
              children: [
                Text(
                  'Status:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  todo.completed ? 'Completed' : 'Not completed',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TodoProvider extends ChangeNotifier {
  List<Todo> todos = [];

  Future<void> fetchTodos() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonTodos = jsonDecode(response.body);
      todos = jsonTodos.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Failed to load todos');
      throw Exception('Failed to load todos');
    }
  }
}
