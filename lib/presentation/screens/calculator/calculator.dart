import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/classes/info_bac.dart';

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
    super.initState();
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text("Bac Informatique", style: TextStyle(
                fontFamily: "Spring",
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: AppColors.blue1,
              ),),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: bacInfo.bacInfo.length - 1,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(14),
                      decoration:  BoxDecoration(
                        color: HexColor("eeeeee").withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(bacInfo.bacInfo[index][0].toString(), style: const TextStyle(
                            fontSize: 20,
                          ),),
                          const SizedBox(height: 10,),
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
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: HexColor("DDDDDD")),
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
                  },

                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
         BacInfo bacInfo = BacInfo();

                String moy = bacInfo.calcMoyenne(double.parse(_controllers[0].text), double.parse(_controllers[1].text), double.parse(_controllers[2].text), double.parse(_controllers[4].text), double.parse(_controllers[3].text), double.parse(_controllers[5].text), double.parse(_controllers[6].text), double.parse(_controllers[7].text), double.parse(_controllers[8].text), double.parse(_controllers[9].text), 18);

                print(moy);
      }, child: const Icon(Icons.calculate_outlined, color: AppColors.blue1,),),
    );
  }
}
