import 'package:flutter/material.dart';

TextEditingController lvlController = TextEditingController();
TextEditingController sectionController = TextEditingController();

class SchoolLvl extends StatelessWidget {
  const SchoolLvl({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Your school level 🚀",
              style: TextStyle(
                fontSize: 26,
                fontFamily: "Rubik",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20,),

        Image.asset("assets/images/img3.png"),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownMenu(
                controller: lvlController,
                  hintText: "Your level?",
                  menuStyle: MenuStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                  ),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: "", label: "1ere année"),
                    DropdownMenuEntry(value: "", label: "2eme année"),
                    DropdownMenuEntry(value: "", label: "3eme année"),
                    DropdownMenuEntry(value: "", label: "Bac"),
                  ]),
              const SizedBox(
                height: 15,
              ),
               DropdownMenu(
                controller: sectionController,
                  // enabled: false,
                  hintText: "Your section?",
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: "", label: "Science"),
                    DropdownMenuEntry(value: "", label: "Math"),
                    DropdownMenuEntry(value: "", label: "Informatique"),
                    DropdownMenuEntry(value: "", label: "Eco"),
                    DropdownMenuEntry(value: "", label: "Lettres"),
                  ]),
            ],
          ),
        ),
      ],
    );
  }
}
