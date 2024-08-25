import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';

TextEditingController goalController = TextEditingController();

class GradeGoal extends StatelessWidget {
  const GradeGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Grade-Goal 🎓",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Image.asset("assets/images/img4.png"),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Be realistic :))",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor("ADB5BD"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    controller: goalController,
                    textCapitalization: TextCapitalization.sentences,
                    style: const TextStyle(
                      fontFamily: "Spring",
                      fontWeight: FontWeight.w500,
                      fontSize: 19.2,
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: HexColor("DDDDDD")),
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.blue1),
                        ),
                        hintText: "20.15",
                        hintStyle: TextStyle(
                          color: HexColor("DDDDDD"),
                          fontFamily: "Spring",
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
