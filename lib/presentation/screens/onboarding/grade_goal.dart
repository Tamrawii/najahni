import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';

class GradeGoal extends StatelessWidget {
  const GradeGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Spacer(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Grade-Goal 🎓", style: TextStyle(
              fontSize: 26,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w600,
            ),),
          ],
        ),
        const Spacer(),
        Image.asset("assets/images/img4.png"),
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Be realistic :))",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: HexColor("ADB5BD"),
              ),
              ),

              const SizedBox(height: 15,),

              SizedBox(
                width: 100,
                child: TextFormField(
                  style: const TextStyle(
                    fontFamily: "Rubic",
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.blue3.withOpacity(0.3),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: HexColor("DDDDDD")),
                    ),
                    hintText: "20.15",
                    hintStyle: TextStyle(
                      color: HexColor("DDDDDD"),
                      fontFamily: "Rubik",
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );

  }
}
