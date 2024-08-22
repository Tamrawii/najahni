import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    List pagesList = [const HomeScreen(), const ToDo()];

    return Scaffold(
      body: pagesList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              pageIndex = index;
              print(pageIndex);
            });
          },
          currentIndex: pageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_outlined), label: "To-Do"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate_outlined), label: "Grade Calc"),
          ]),
    );
  }
}
