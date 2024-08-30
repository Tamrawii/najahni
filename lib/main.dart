import 'package:flutter/material.dart';
import 'package:najahni/app.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/data/providers/db_provider.dart';
import 'package:provider/provider.dart';
import 'package:workmanager/workmanager.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';


late final isEmpty;

void callbackDispatcher() {
  print("hello world");
  Workmanager().executeTask((task, inputData) async {
    // This is the background task that will be executed
    await _deleteOldData();
    return Future.value(true);
  });
}

Future<void> _deleteOldData() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([StudentModelSchema], directory: dir.path);

  // Query for objects to delete
  // final objectsToDelete = isar.studentModels..where().findAll();

  final userId = await isar.studentModels.where().findAll();

  // Delete the objects
  isar.studentModels.delete(userId[0].id);

  print("Data deleted at 12 A.M."); // Log the delete operation

  await isar.close();
}


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  IsarServices isarServices = IsarServices();

  isarServices.openDb();
  isEmpty = await isarServices.isEmpty();
  Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> DbProvider()),
    ],
    child: const MyApp()));
}
