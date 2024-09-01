import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/models/todo_model.dart';
import 'package:najahni/data/local/db/app_db.dart';

class TodoProvider extends ChangeNotifier {
  String? taskName;
  bool? isDone;
  int count = 0;

  getTasks() async{
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    final task = await isar.todoModels.where().findAll();
    notifyListeners();
    return task;
  }

  Stream<List<TodoModel>> loadData() async* {
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    while (true) {
      final task = await isar.todoModels.where().findAll();
      yield task;
      unfinishedTasks();

      await Future.delayed(
          const Duration(seconds: 1));
    }
  }


  // Save & Update
  Future saveTask(TodoModel task) async {
    IsarServices isarServices = IsarServices();
    final isar = await isarServices.openDb();

    await isar.writeTxn(() async {
      isar.todoModels.put(task);
    });
    notifyListeners();
  }

  Future removeTask(int id) async {
    IsarServices isarServices = IsarServices();
    final isar = await isarServices.openDb();

    await isar.writeTxn(() async {
      isar.todoModels.delete(id);
    });
    notifyListeners();
  }

  Future unfinishedTasks() async{
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    count = await isar.todoModels.filter().isDoneEqualTo(false).count();
    notifyListeners();
  }
}
