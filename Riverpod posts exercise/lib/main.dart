import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lab4/todo_provider.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final container = ProviderContainer();
    container.read(todoProvider).fetchTodos();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do',
      home: ProviderScope(
        container: container,
        child: TodoList(),
      ),
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
    final todos = context.read(todoProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Consumer(
        builder: (context, watch, _) {
          final todosState = watch(todoProvider);

          return todosState.when(
            data: (todos) {
              if (todos.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final Todo todo = todos[index];
                  return Card(
                    margin: const EdgeInsets.all(8),
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
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => const Center(
              child: Text('Failed to load todos'),
            ),
          );
        },
      ),
    );
  }
}

final todoProvider = FutureProvider<List<Todo>>((ref) async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/todos'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> jsonTodos = jsonDecode(response.body);
    final todos = jsonTodos.map((json) => Todo.fromJson(json)).toList();
    return todos;
  } else {
    print('Failed to load todos');
    throw Exception('Failed to load todos');
  }
});