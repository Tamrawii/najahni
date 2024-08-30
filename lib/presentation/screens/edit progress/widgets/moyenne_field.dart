import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Moyenne extends StatelessWidget {
  const Moyenne({
    super.key,
    required this.controller,
    required this.text,
    required this.color,
  });

  final TextEditingController controller;
  final String text;
  final MaterialAccentColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: HexColor("eeeeee").withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontFamily: "Spring",
                          fontWeight: FontWeight.w600,
                          fontSize: 19.2,
                          color: HexColor("888888"),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 20,
                        width: 2,
                        color: HexColor("DDDDDD"),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: controller,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19.2,
                        color: color,
                        fontFamily: "Spring",
                      ),
                      decoration: InputDecoration(
                        hintText: "No Data",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontSize: 19.2,
                          color: HexColor("DDDDDD"),
                          fontFamily: "Spring",
                        ),
                      ),
                    ),
                  )
                ])));
  }
}
