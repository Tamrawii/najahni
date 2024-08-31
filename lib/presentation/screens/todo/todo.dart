import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
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
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        textCapitalization: TextCapitalization.sentences,
                        style: const TextStyle(
                          fontFamily: "Spring",
                          fontWeight: FontWeight.w500,
                          fontSize: 19.2,
                        ),
                        decoration: InputDecoration(
                            hintText: "Type your task",
                            hintStyle: TextStyle(
                              color: HexColor("CCCCCC"),
                              fontFamily: "Spring",
                            )),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add))
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: HexColor("eeeeee").withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 1,
                  //     blurRadius: 2,
                  //     offset: const Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                ),
                child: Row(
                  children: [
                    Checkbox(value: false, onChanged: (val) {}),
                    const Text(
                      "Finish programming lesson",
                      style: TextStyle(
                        fontSize: 19.2,
                        fontFamily: "Spring",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
