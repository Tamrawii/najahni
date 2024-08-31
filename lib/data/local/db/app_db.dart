import 'package:isar/isar.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/core/models/todo_model.dart';
import 'package:path_provider/path_provider.dart';

class IsarServices {
  late Future<Isar> db;

  IsarServices() {
    db = openDb();
  }

  Future<bool> isEmpty() async {
    final isar = await openDb();
    final databaseSize = await isar.getSize();

    return databaseSize == 0;
  }

  Future<Isar> openDb() async {
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([StudentModelSchema, TodoModelSchema],
          directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

  void saveStudent(StudentModel student) async {
    final isar = await openDb();

    await isar.writeTxn(() async {
      isar.studentModels.put(student);
    });
  }

  void savetodo(TodoModel task) async {
    final isar = await openDb();

    await isar.writeTxn(() async {
      isar.todoModels.put(task);
    });
  }
}
