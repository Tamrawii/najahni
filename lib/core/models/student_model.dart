import 'package:isar/isar.dart';

part 'student_model.g.dart';

@collection
class StudentModel {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? name;

  String? schoolLvl;

  String? section;

  String? mainTask;

  bool? isDone;

  double? gradeGoal;

  double? trim1;

  double? trim2;

  double? trim3;
}
