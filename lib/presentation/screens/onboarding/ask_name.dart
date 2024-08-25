import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';


TextEditingController nameController = TextEditingController();

class AskName extends StatelessWidget {
  const AskName({super.key});


  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "What's your name? 😎",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,),
          Image.asset("assets/images/img2.png"),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Display name?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor("ADB5BD"),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: nameController,
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
                      hintText: "Foulen Ben Foulen",
                      hintStyle: TextStyle(
                        color: HexColor("DDDDDD"),
                        fontFamily: "Spring",
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
