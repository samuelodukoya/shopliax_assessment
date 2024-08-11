// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shopliax_assessment/src/connectivity_banner/connection_banner.dart';
import 'package:shopliax_assessment/src/screens/api_screen.dart';

import '../data/storage.dart';
import '../models/task_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Task> _tasks = [];
  final Storage storage = Storage();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    storage.readTasks().then((taskList) {
      setState(() {
        _tasks.addAll(taskList);
      });
    });
  }

  void _addNewTask(String title) {
    final newTask = Task(
      title: title,
      id: DateTime.now().toString(),
    );

    setState(() {
      _tasks.add(newTask);
    });
    _listKey.currentState?.insertItem(_tasks.length - 1);
    storage.writeTasks(_tasks);
  }

  void _startAddNewTask(BuildContext context) {
    String taskTitle = '';

    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Add New Task'),
            content: TextField(
              onChanged: (value) {
                taskTitle = value;
              },
              decoration: const InputDecoration(
                labelText: 'Task Title',
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  if (taskTitle.isNotEmpty) {
                    _addNewTask(taskTitle);
                    Navigator.of(ctx).pop();
                  }
                },
              ),
            ],
          );
        });
  }

  void _deleteTask(int index) {
    Task removedTask = _tasks[index];

    setState(() {
      _tasks.removeAt(index);
    });

    _listKey.currentState?.removeItem(
      index,
      (BuildContext context, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(removedTask.title,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough)),
              leading: const Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 250),
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${removedTask.title} deleted'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            setState(() {
              _tasks.insert(index, removedTask);
            });
            _listKey.currentState?.insertItem(index);
          },
        ),
        duration: const Duration(seconds: 2),
      ),
    );

    storage.writeTasks(_tasks);
  }

  Widget _buildTaskItem(BuildContext context, int index) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        title: Text(
          _tasks[index].title,
          style: TextStyle(
              decoration:
                  _tasks[index].completed ? TextDecoration.lineThrough : null),
        ),
        leading: Icon(
          _tasks[index].completed
              ? Icons.check_circle
              : Icons.radio_button_unchecked,
          color: _tasks[index].completed ? Colors.green : null,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => _deleteTask(index),
        ),
        onTap: () {
          setState(() {
            _tasks[index].toggleCompleted();
          });
          storage.writeTasks(_tasks);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopliax Assessment'),
        actions: [
          IconButton(
            onPressed: () => const PhotoListScreen(),
            icon: const Icon(Icons.photo),
          ),
        ],
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _tasks.length,
        itemBuilder: (context, index, animation) {
          return _buildTaskItem(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTask(context),
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
