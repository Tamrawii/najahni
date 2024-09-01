import 'package:flutter/material.dart';
import 'package:najahni/app.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/data/providers/db_provider.dart';
import 'package:najahni/data/providers/todo_provider.dart';
import 'package:provider/provider.dart';


late final isEmpty;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  IsarServices isarServices = IsarServices();

  isarServices.openDb();
  isEmpty = await isarServices.isEmpty();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=> DbProvider()),
      ChangeNotifierProvider(create: (context) => TodoProvider())
    ],
    child: const MyApp()));
}
