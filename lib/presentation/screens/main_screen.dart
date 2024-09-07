import 'package:flutter/material.dart';
import 'package:najahni/presentation/screens/calculator/calculator.dart';
import 'package:najahni/presentation/screens/home/home_screen.dart';
import 'package:najahni/presentation/screens/todo/todo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pagesList = [const HomeScreen(), const ToDo(), const CalculatorScreen()];

    return Scaffold(
      body: pagesList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(pageIndex == 0 ? Icons.home_rounded : Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(pageIndex == 1 ? Icons.note_alt : Icons.note_alt_outlined), label: "To-Do"),
            BottomNavigationBarItem(
                icon: Icon(pageIndex == 2 ? Icons.calculate : Icons.calculate_outlined), label: "Grade Calc"),
          ]),
    );
  }
}
