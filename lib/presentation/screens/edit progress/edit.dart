import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/moyenne_field.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key});

  final TextEditingController _moy1 = TextEditingController();

  final TextEditingController _moy2 = TextEditingController();
  final TextEditingController _moy3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _moy1.text = "15.80";
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.pop(),
          child: Icon(
            Icons.arrow_back_rounded,
            color: HexColor("888888"),
          ),
        ),
        title: Text(
          "Your progress",
          style: TextStyle(fontFamily: "Spring", color: HexColor("888888")),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Hero(
              tag: "progressBar",
              child: CircularSeekBar(
                trackColor: HexColor("eeeeee").withOpacity(0.5),
                width: double.infinity,
                height: 250,
                progress: 33,
                barWidth: 8,
                startAngle: 90,
                sweepAngle: 180,
                strokeCap: StrokeCap.round,
                progressGradientColors: const [
                  Colors.redAccent,
                  Colors.redAccent
                ],
                dashWidth: 50,
                dashGap: 15,
                animation: true,
                child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 18.0),
                      child: Text(
                        "20.15",
                        style: TextStyle(
                          color: HexColor("333333"),
                          fontSize: 40,
                          fontFamily: "Spring",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
              ),
            ),
            Moyenne(
              controller: _moy1,
              text: "1st trimester",
            ),
            const SizedBox(height: 15),
            Moyenne(
              controller: _moy2,
              text: "2nd trimester",
            ),
            const SizedBox(height: 15),
            Moyenne(
              controller: _moy3,
              text: "3rd trimester",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save_outlined),
      ),
    );
  }
}
