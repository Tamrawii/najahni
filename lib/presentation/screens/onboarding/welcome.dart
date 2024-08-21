
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const Spacer(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to", style: TextStyle(
              fontSize: 26,
              fontFamily: "Spring",
              fontWeight: FontWeight.w600,
            ),),
            Text(" Najahni",  style: TextStyle(
              fontSize: 26,
              fontFamily: "Spring",
              fontWeight: FontWeight.w800,
              color: AppColors.blue1,
            ),),
          ],
        ),
        const Spacer(),
        Image.asset("assets/images/img1.png"),
        const SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Text("A free mobile app to  follow your grade-goals and work to achieve them, with the help of study resources.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: HexColor("ADB5BD"),
          ),
          ),
        ),
        const Spacer(),
      ],
    );

  }
}
