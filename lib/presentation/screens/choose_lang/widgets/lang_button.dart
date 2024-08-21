import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

langButton(isSelected, text, img) {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: ElevatedButton(onPressed: (){},
    style:  ButtonStyle(
      shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(width: 2, color: isSelected? HexColor("1C7ED6") : HexColor("A5D8FF"))
        )
      )
    ), child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(text, style: TextStyle(
            color: isSelected? HexColor("1C7ED6") : HexColor("A5D8FF"),
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontFamily: "Spring",
          ),),
        ),
        Image.asset(img, opacity: isSelected? const AlwaysStoppedAnimation(1) : const AlwaysStoppedAnimation(.5),),
      ],
    ),
    ),
  );
  }
