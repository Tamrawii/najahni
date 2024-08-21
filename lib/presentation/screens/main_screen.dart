import 'package:flutter/material.dart';
import 'package:najahni/presentation/screens/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeScreen(),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.note_alt_outlined), label: "To-Do"),
        BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: "Grade Calc"),
      ]),
    );
  }
}
