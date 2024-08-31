import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/models/todo_model.dart';
import 'package:najahni/data/local/db/app_db.dart';

class TodoProvider extends ChangeNotifier {
  String? taskName;
  bool? isDone;

  openDb() async{
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    final task = await isar.todoModels.where().findAll();
    notifyListeners();
    return task[0];
  }
}
