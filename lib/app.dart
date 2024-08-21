import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/presentation/screens/choose_lang/choose_lang.dart';
import 'package:najahni/presentation/screens/main_screen.dart';
import 'package:najahni/presentation/screens/onboarding/onboarding.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const ChooseLang(),),
    GoRoute(path: '/onBoarding', builder: (context, state) => const OnBoarding(),),
    GoRoute(path: '/main', builder: (context, state) => const MainScreen(),),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: HexColor('1C7ED6'),
      ),
    );
  }

}
