import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/core/utils/api.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DbProvider extends ChangeNotifier {
  String? userName;
  String? mainTask;
  bool isDone = false;
  String? moy1;
  String? moy2;
  String? moy3;
  double? grade;
  double progress = 0;
  List<Color> colors = [];
  MaterialAccentColor trim1C = Colors.redAccent;
  MaterialAccentColor trim2C = Colors.redAccent;
  MaterialAccentColor trim3C = Colors.redAccent;
  var quote;

  Stream<StudentModel> geData() async* {
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    // Assuming some logic that checks for updates or loops continuously
    while (true) {
      final student = await isar.studentModels.where().findAll();
      yield student[0]; // Emitting the student data

      await Future.delayed(
          const Duration(seconds: 1)); // Control the frequency of data fetching
    }
  }

  Future<StudentModel> getFuture() async {
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    final sudent = await isar.studentModels.where().findAll();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('section', sudent[0].section!);
    notifyListeners();
    return sudent[0];
  }

  void loadData() async {
    StudentModel student = await getFuture();
    quote = await getQuote();
    notifyListeners();
  }
}
