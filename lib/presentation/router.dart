import 'package:go_router/go_router.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/main.dart';
import 'package:najahni/presentation/screens/calculator/calculator.dart';
import 'package:najahni/presentation/screens/choose_lang/choose_lang.dart';
import 'package:najahni/presentation/screens/edit%20progress/edit.dart';
import 'package:najahni/presentation/screens/main_screen.dart';
import 'package:najahni/presentation/screens/onboarding/onboarding.dart';
import 'package:najahni/presentation/screens/todo/todo.dart';

IsarServices isarServices = IsarServices();

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => isEmpty? const ChooseLang() : const MainScreen(),
  ),
  GoRoute(
    path: '/onBoarding',
    builder: (context, state) => const OnBoarding(),
  ),
  GoRoute(
    path: '/main',
    builder: (context, state) => const MainScreen(),
  ),
  GoRoute(
    path: '/todo',
    builder: (context, state) => const ToDo(),
  ),
  GoRoute(
    path: '/edit',
    builder: (context, state) => const EditPage(),
  ),
  GoRoute(
    path: '/edicalc',
    builder: (context, state) => const CalculatorScreen(),
  ),
]);
