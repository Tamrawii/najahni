import 'package:flutter/material.dart';
import 'package:najahni/core/constants/colors.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "You've got",
                    style: TextStyle(
                      fontSize: 19.2,
                    ),
                  ),
                  Text(
                    " 5 tasks ",
                    style: TextStyle(
                      fontSize: 19.2,
                      color: AppColors.blue1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "to finish",
                    style: TextStyle(
                      fontSize: 19.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
