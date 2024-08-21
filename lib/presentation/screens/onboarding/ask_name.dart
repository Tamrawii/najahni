import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';

class AskName extends StatelessWidget {
  const AskName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Spacer(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("What's your name? 😎", style: TextStyle(
              fontSize: 26,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w600,
            ),),
          ],
        ),
        const Spacer(),
        Image.asset("assets/images/img2.png"),
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Display name?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: HexColor("ADB5BD"),
              ),
              ),

              const SizedBox(height: 15,),

              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.blue3.withOpacity(0.3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor("DDDDDD")),
                  ),
                  hintText: "Foulen Ben Foulen",
                  hintStyle: TextStyle(
                    color: HexColor("DDDDDD"),
                    fontFamily: "Rubik",
                  )
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
