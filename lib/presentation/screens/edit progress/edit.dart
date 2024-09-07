import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/core/utils/helpers.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/data/providers/db_provider.dart';

import 'widgets/moyenne_field.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _moy1 = TextEditingController();

  final TextEditingController _moy2 = TextEditingController();

  final TextEditingController _moy3 = TextEditingController();

  TextEditingController mainTaskController = TextEditingController();

  bool isDone = false;

  double? goal;

  Future<List?> getData() async{
    IsarServices isarServices = IsarServices();
    final db = isarServices.openDb();
    final isar = await db;

    final userId = await isar.studentModels.where().findAll();
    final trim1 = userId[0].trim1;
    final trim2 = userId[0].trim2;
    final trim3 = userId[0].trim3;
    final gradeGoal = userId[0].gradeGoal;
    return [trim1, trim2, trim3, gradeGoal];
  }

  // Usage
  void loadData() async {
    List? list = await getData();
    double? trim1 = list![0];
    double? trim2 = list[1];
    double? trim3 = list[2];
    double? gradeGoal = list[3];

    if(trim1 != null) {_moy1.text = trim1.toString();}
    if(trim2 != null) {_moy2.text = trim2.toString();}
    if(trim3 != null) {_moy3.text = trim3.toString();}

    goal = gradeGoal;

    setState(() {
    });
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DbProvider dbProvider = DbProvider();
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
      body: goal == null ? const Center(child: Text("Loading..."),) : StreamBuilder(
        stream: dbProvider.geData(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: Text("Loading..."));
          }else if(snapshot.hasError){
            return Center(child: Text("Error: ${snapshot.error}"));
          }else if(snapshot.hasData){
            return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Hero(
                  tag: "progressBar",
                  child: CircularSeekBar(
                    interactive: false,
                    width: double.infinity,
                    height: 200,
                    progress: progressValue(snapshot.data!.trim1, snapshot.data!.trim2, snapshot.data!.trim3),
                    barWidth: 8,
                    startAngle: 90,
                    sweepAngle: 180,
                    strokeCap: StrokeCap.round,
                    progressGradientColors: generateProgressColors(snapshot.data!.trim1, snapshot.data!.trim2, snapshot.data!.trim3, snapshot.data!.gradeGoal),
                    dashWidth: 50,
                    dashGap: 15,
                    animation: true,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            goal.toString(),
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
                  color: snapshot.data!.trim1 != null ? returnColor(snapshot.data!.trim1, snapshot.data!.gradeGoal) : Colors.black,
                ),
                const SizedBox(height: 15),
                Moyenne(
                  controller: _moy2,
                  text: "2nd trimester",
                  color: snapshot.data!.trim2 != null ? returnColor(snapshot.data!.trim2, snapshot.data!.gradeGoal): Colors.black,
                ),
                const SizedBox(height: 15),
                Moyenne(
                  controller: _moy3,
                  text: "3rd trimester",
                  color: snapshot.data!.trim3 != null ? returnColor(snapshot.data!.trim3, snapshot.data!.gradeGoal) : Colors.black,
                ),
              ],
            ),
          ),
        );
          }else{
            return const Center(child: Text("No data"),);
          }
        }



      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          IsarServices isarServices = IsarServices();
          final db = isarServices.openDb();
          final isar = await db;

          final userId = await isar.studentModels.where().findAll();
          final existingUser = userId[0];

          await isar.writeTxn(() async {
            if(_moy1.text.isNotEmpty) {existingUser.trim1 = double.parse(_moy1.text);}
            if(_moy2.text.isNotEmpty) {existingUser.trim2 = double.parse(_moy2.text);}
            if(_moy3.text.isNotEmpty) {existingUser.trim3 = double.parse(_moy3.text);}
            await isar.studentModels.put(existingUser);
          });

          FocusManager.instance.primaryFocus!.unfocus();
        },
        child: const Icon(Icons.save_outlined, color: AppColors.blue1,),
      ),
    );
  }
}
