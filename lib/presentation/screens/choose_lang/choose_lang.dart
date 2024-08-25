import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/presentation/screens/choose_lang/widgets/lang_button.dart';

class ChooseLang extends StatelessWidget {
  const ChooseLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  "عسلامة 👋",
                  style: ArabicTextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    arabicFont: ArabicFont.cairo,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
              const Text(
                "إختار اللغة الي تناسبك",
                style: ArabicTextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  arabicFont: ArabicFont.cairo,
                ),
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(
                height: 50,
              ),
              langButton(false, "اللهجة التونسية", "assets/images/tn_flag.png"),
              const SizedBox(
                height: 30,
              ),
              langButton(false, "Français", "assets/images/fr_flag.png"),
              const SizedBox(
                height: 30,
              ),
              langButton(false, "English", "assets/images/uk_flag.png"),
              const SizedBox(
                height: 80,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shadowColor:
                            const WidgetStatePropertyAll(Colors.transparent),
                        backgroundColor: const WidgetStatePropertyAll<Color>(
                            AppColors.blue1),
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ))),
                    onPressed: () {
                      context.go("/onBoarding");
                    },
                    child: const Text(
                      "متابعة",
                      style: ArabicTextStyle(
                        color: Colors.white,
                        fontSize: 19.2,
                        fontWeight: FontWeight.w600,
                        arabicFont: ArabicFont.cairo,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
