import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/presentation/router.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: HexColor('1C7ED6'),
      ),
    );
  }
}
