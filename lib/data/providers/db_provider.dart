import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/data/local/db/app_db.dart';

class DbProvider extends ChangeNotifier{

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

  Stream<StudentModel> geData() async* {
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    // Assuming some logic that checks for updates or loops continuously
    while (true) {
      final student = await isar.studentModels.where().findAll();
      yield student[0]; // Emitting the student data

      await Future.delayed(const Duration(seconds: 1)); // Control the frequency of data fetching
    }
}

Future<StudentModel> getFuture() async{
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    final sudent = await isar.studentModels.where().findAll();
    notifyListeners();
    return sudent[0];
  }


  void loadData() async {
    StudentModel student = await getFuture();

    // if(student.trim1 != null) {
    //   moy1 = student.trim1.toString();
    //   if(student.trim1 != 0){
    //   if(10<= (student.gradeGoal! - student.trim1!)){
    //     colors.add(Colors.redAccent);
    //     colors.add(Colors.redAccent);
    //   }else if(5 <= (student.gradeGoal! - student.trim1!) && (student.gradeGoal! - student.trim1!) < 10){
    //     colors.add(Colors.yellowAccent);
    //     colors.add(Colors.yellowAccent);
    //     trim1C = Colors.yellowAccent;
    //   }else{
    //     colors.add(Colors.greenAccent);
    //     colors.add(Colors.greenAccent);
    //     trim1C = Colors.greenAccent;
    //   }
    //   progress += 33;
    //   }
    // }

    // if(student.trim2 != null) {
    //   moy2 = student.trim2.toString();
    //   if(student.trim2 != 0){
    //   if(10<= (student.gradeGoal! - student.trim2!)){
    //     colors.add(Colors.redAccent);
    //     colors.add(Colors.redAccent);
    //   }else if(5 <= (student.gradeGoal! - student.trim2!) && (student.gradeGoal! - student.trim2!) < 10){
    //     colors.add(Colors.yellowAccent);
    //     colors.add(Colors.yellowAccent);
    //     trim2C = Colors.yellowAccent;
    //   }else{
    //     colors.add(Colors.greenAccent);
    //     colors.add(Colors.greenAccent);
    //     trim2C = Colors.greenAccent;
    //   }
    //   progress += 33;
    //   }
    // }

    // if(student.trim3 != null) {
    //   moy3 = student.trim3.toString();
    //   if(student.trim3 != 0){
    //   if(10<= (student.gradeGoal! - student.trim3!)){
    //     colors.add(Colors.redAccent);
    //     colors.add(Colors.redAccent);
    //   }else if(5 <= (student.gradeGoal! - student.trim3!) && (student.gradeGoal! - student.trim3!) < 10){
    //     colors.add(Colors.yellowAccent);
    //     colors.add(Colors.yellowAccent);
    //     trim3C = Colors.yellowAccent;
    //   }else{
    //     colors.add(Colors.greenAccent);
    //     colors.add(Colors.greenAccent);
    //     trim3C = Colors.greenAccent;
    //   }
    //   progress += 33;
    //   }

    // }
    userName = student.name!;
    mainTask = student.mainTask!;
    isDone = student.isDone!;
    grade = student.gradeGoal;

    notifyListeners();
  }


}
