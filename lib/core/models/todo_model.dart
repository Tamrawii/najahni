import 'package:isar/isar.dart';

part 'todo_model.g.dart';

@collection
class TodoModel {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? taskName;

  bool? isDone;
}
