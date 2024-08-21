import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // TOP
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("Welcome back,", style: TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 19.2,
                            fontWeight: FontWeight.w300,
                          ),),
                          Text("Chahine,", style: TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),),
                        ],
                      ),

                    IconButton(onPressed: (){}, icon: const Icon(Icons.card_giftcard_outlined,))
                  ],
                ),

                const SizedBox(height: 40,),

                // Quote
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor("eeeeee").withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),

                  child:   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                         Row(
                          children: [
                            Icon(Icons.format_quote_outlined, size: 20, color: HexColor("989898"),),
                            const SizedBox(width: 10,),
                            Text("Daily Quote", style: TextStyle(
                              color: HexColor("989898"),
                              fontFamily: "Rubic",
                              fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),

                        const SizedBox(height: 15,),

                        Text('"If you wish to be a success in the world, promise everything, deliver nothing."', style: GoogleFonts.merriweather(
                          fontSize: 22,
                        ), textAlign: TextAlign.center,),

                        const SizedBox(height: 15,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline_rounded, color: HexColor("FA4C4C"),)),

                            Row(
                              children: [
                                 Container(
                                  height: 1,
                                  width: 25,
                                  color: HexColor("666666"),
                                ),

                                const SizedBox(width: 8,),

                                Text("Napolean", style: GoogleFonts.merriweather(
                                  fontSize: 15,
                                  color: HexColor("666666")
                                ),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                // Main Task
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor("eeeeee").withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),

                  child:  Padding(
                    padding: const EdgeInsets.all(16),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.task_alt_rounded, size: 20, color: HexColor("989898"),),
                            const SizedBox(width: 10,),
                            Text("Today's main task", style: TextStyle(
                              color: HexColor("989898"),
                              fontFamily: "Rubic",
                              fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),

                        const SizedBox(height: 15,),

                          TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.multiline,
                          minLines: 1,
                          maxLines: 2,
                          style: GoogleFonts.merriweather(
                          fontSize: 19.2,
                          // color: HexColor("CCCCCC")
                          ),
                          decoration: InputDecoration(
                            hintText: "What will you focus on today?",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.merriweather(
                          fontSize: 19.2,
                          color: HexColor("CCCCCC")
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                // Your Progress
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: HexColor("eeeeee").withOpacity(0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),

                  child:  Padding(
                    padding: const EdgeInsets.all(16),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.show_chart_outlined, size: 20, color: HexColor("989898"),),
                                const SizedBox(width: 10,),
                                Text("Your progress", style: TextStyle(
                                  color: HexColor("989898"),
                                  fontFamily: "Rubic",
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),

                            SizedBox(
                              height: 25,
                              width: 91,
                              child: ElevatedButton.icon(
                                style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll<Color>(Colors.transparent),
                                  shadowColor: WidgetStatePropertyAll<Color>(Colors.transparent),
                                ),
                                onPressed: (){}, label: const Text("Edit"), icon: const Icon(Icons.edit_outlined, size: 18,),),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15,),

                         CircularSeekBar(

                          width: double.infinity,
                          height: 200,
                          progress: 33,
                          barWidth: 8,
                          startAngle: 90,
                          sweepAngle: 180,
                          strokeCap: StrokeCap.round,
                          progressGradientColors: const [Colors.redAccent, Colors.redAccent],
                          dashWidth: 50,
                          dashGap: 15,
                          animation: true,
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 18.0),
                              child: Text("20.15", style: TextStyle(
                                color: HexColor("333333"),
                                fontSize: 40,
                                fontFamily: "Spring",
                                fontWeight: FontWeight.w600,
                              ),),
                            )),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text("15.80", style: TextStyle(
                              color: Colors.redAccent,
                                fontSize: 18,
                                fontFamily: "Spring",
                                fontWeight: FontWeight.w700,
                            ),),

                            Container(
                              width: 1.0,
                              height: 15.0,
                              color: HexColor("CCCCCC"),
                            ),

                            Text("2nd trimester", style: TextStyle(
                              color: HexColor("CCCCCC"),
                                fontSize: 18,
                                fontFamily: "Spring",
                                fontWeight: FontWeight.w400,
                            ),),

                            Container(
                              width: 1.0,
                              height: 15.0,
                              color: HexColor("CCCCCC"),
                            ),

                            Text("3rd trimester", style: TextStyle(
                              color: HexColor("CCCCCC"),
                                fontSize: 18,
                                fontFamily: "Spring",
                                fontWeight: FontWeight.w400,
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
