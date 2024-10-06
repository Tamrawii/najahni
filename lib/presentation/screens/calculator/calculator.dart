import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/classes/info_bac.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {

  late List<TextEditingController> _controllers;

  BacInfo bacInfo = BacInfo();

  @override
  void initState() {
    _controllers = List.generate(bacInfo.bacInfo.length, (index) => TextEditingController());
    test();
    super.initState();
  }

  void test()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? section = prefs.getString('section');
    print(section);
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    BacInfo bacInfo = BacInfo();

    return Container(
      color: AppColors.blue3.withOpacity(0.5),
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.blue3.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                    children: [
                      Text("Niveau:", style: TextStyle(
                        fontFamily: "Spring",
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: AppColors.blue1,
                      ),),
                      SizedBox(width: 15,),
                      Text("Bac", style: TextStyle(
                        fontFamily: "Spring",
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        // color: AppColors.blue1,
                      ),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Section:", style: TextStyle(
                        fontFamily: "Spring",
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: AppColors.blue1,
                      ),),
                      SizedBox(width: 15,),
                      Text("Informatique", style: TextStyle(
                        fontFamily: "Spring",
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        // color: AppColors.blue1,
                      ),),
                    ],
                  ),
                    ],
                  ),

            ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  // mainAxisSpacing: 10,
                  // childAspectRatio: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 20),

                  children: List.generate(bacInfo.bacInfo.length-1, (index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(14),
                      decoration:  BoxDecoration(
                        color: HexColor("eeeeee").withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(bacInfo.bacInfo[index].toString(), style: TextStyle(
                            fontSize: 20,
                            color: HexColor("333333"),
                            fontFamily: "Spring",
                            fontWeight: FontWeight.bold,
                          ),),
                          const SizedBox(height: 15,),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: _controllers[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                // fontFamily: "Spring",
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue1),
                                ),
                                hintText: "0",
                                hintStyle: TextStyle(
                                  color: HexColor("DDDDDD"),
                                  fontFamily: "Spring",
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    );
                  }),

                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
             BacInfo bacInfo = BacInfo();

            String moy = bacInfo.calcMoyenne(double.parse(_controllers[0].text), double.parse(_controllers[1].text), double.parse(_controllers[2].text), double.parse(_controllers[4].text), double.parse(_controllers[3].text), double.parse(_controllers[5].text), double.parse(_controllers[6].text), double.parse(_controllers[7].text), double.parse(_controllers[8].text), double.parse(_controllers[9].text), 18);

            print(moy);
          }, child: const Icon(Icons.calculate_outlined, color: AppColors.blue1,),),
        ),
      ),
    );
  }
}
