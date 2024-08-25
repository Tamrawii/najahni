import 'package:isar/isar.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:path_provider/path_provider.dart';

class IsarServices{
  late Future<Isar> db;

  IsarServices(){
    db = openDb();
  }

   Future<bool> isEmpty() async{
    final isar = await openDb();
    final databaseSize = await isar.getSize();

    return databaseSize == 0;
  }

  Future<Isar> openDb() async{
    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open([StudentModelSchema], directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }

  void saveStudent(StudentModel student) async{
    final isar = await openDb();

    await isar.writeTxn(()async{
      isar.studentModels.put(student);
    });
  }

  Future<void> deleteData() async {
    final isar = await openDb();

    // Query for objects to delete
    final objectsToDelete = isar.studentModels..where().findAll();

    final userId = await isar.studentModels.where().findAll();
    final existingUser = userId[0];

    await isar.writeTxn(() async {
      existingUser.mainTask = "";
      await isar.studentModels.put(existingUser);
    });
    // Delete the objects

     print("Data deleted at 12 A.M."); // Log the delete operation

    // Close the Isar instance
    await isar.close();
  }

}
