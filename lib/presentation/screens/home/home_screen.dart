import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:isar/isar.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/core/utils/helpers.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/data/providers/db_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController mainTaskController = TextEditingController();

  @override
  void initState() {
    context.read<DbProvider>().loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DbProvider dbProvider = DbProvider();
    if (context.watch<DbProvider>().mainTask != null) {
      mainTaskController.text = context.watch<DbProvider>().mainTask!;
    }

    return context.watch<DbProvider>().quote == null
        ? const Center(child: Text("Loading..."))
        : Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: StreamBuilder(
                    stream: dbProvider.geData(),
                    builder: (context, snapshot) {
                      // if(snapshot.connectionState == ConnectionState.waiting) {
                      //   return const Center(child: Text("Loading..."),);
                      // }else
                      if (snapshot.hasError) {
                        return Center(
                          child: Text("Error ${snapshot.error}"),
                        );
                      } else if (snapshot.hasData) {
                        return Column(
                          children: [
                            // TOP
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Welcome back,",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 19.2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data!.name!,
                                      style: const TextStyle(
                                        fontFamily: "Rubik",
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_outlined,
                                    ))
                              ],
                            ),

                            const SizedBox(
                              height: 40,
                            ),

                            // Quote
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: HexColor("eeeeee").withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.format_quote_outlined,
                                          size: 20,
                                          color: HexColor("989898"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Daily Quote",
                                          style: TextStyle(
                                              color: HexColor("989898"),
                                              fontFamily: "Rubic",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      '"${context.watch<DbProvider>().quote["slip"]["advice"]}"',
                                      style: GoogleFonts.merriweather(
                                        fontSize: 22,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_outline_rounded,
                                              color: HexColor("FA4C4C"),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            // Main Task
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: HexColor("eeeeee").withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.task_alt_rounded,
                                          size: 20,
                                          color: HexColor("989898"),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Today's main task",
                                          style: TextStyle(
                                              color: HexColor("989898"),
                                              fontFamily: "Rubic",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    InkWell(
                                      onDoubleTap: () async {
                                        setState(() {
                                          Provider.of<DbProvider>(context,
                                                      listen: false)
                                                  .isDone =
                                              !Provider.of<DbProvider>(context,
                                                      listen: false)
                                                  .isDone;
                                        });

                                        IsarServices isarServices =
                                            IsarServices();
                                        final db = isarServices.openDb();
                                        final isar = await db;

                                        final userId = await isar.studentModels
                                            .where()
                                            .findAll();
                                        final existingUser = userId[0];

                                        await isar.writeTxn(() async {
                                          existingUser.isDone =
                                              Provider.of<DbProvider>(context,
                                                      listen: false)
                                                  .isDone;
                                          await isar.studentModels
                                              .put(existingUser);
                                        });
                                      },
                                      child: TextFormField(
                                        // readOnly: mainTaskController.text == "" ? false : true,
                                        enableInteractiveSelection:
                                            mainTaskController.text == ""
                                                ? true
                                                : false,
                                        controller: mainTaskController,
                                        onFieldSubmitted: (value) async {
                                          IsarServices isarServices =
                                              IsarServices();
                                          final db = isarServices.openDb();
                                          final isar = await db;

                                          final userId = await isar
                                              .studentModels
                                              .where()
                                              .findAll();
                                          final existingUser = userId[0];

                                          await isar.writeTxn(() async {
                                            existingUser.mainTask =
                                                mainTaskController.text;
                                            existingUser.isDone = false;
                                            await isar.studentModels
                                                .put(existingUser);
                                          });
                                        },
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.merriweather(
                                          fontSize: 19.2,
                                          decoration:
                                              context.watch<DbProvider>().isDone
                                                  ? TextDecoration.lineThrough
                                                  : null,
                                          // color: HexColor("CCCCCC")
                                        ),
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          hintText:
                                              "What will you focus on today?",
                                          border: InputBorder.none,
                                          hintStyle: GoogleFonts.merriweather(
                                              fontSize: 19.2,
                                              color: HexColor("CCCCCC")),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            // Your Progress
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: HexColor("eeeeee").withOpacity(0.5),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.show_chart_outlined,
                                              size: 20,
                                              color: HexColor("989898"),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Your progress",
                                              style: TextStyle(
                                                  color: HexColor("989898"),
                                                  fontFamily: "Rubic",
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                          width: 91,
                                          child: ElevatedButton.icon(
                                            style: const ButtonStyle(
                                              backgroundColor:
                                                  WidgetStatePropertyAll<Color>(
                                                      Colors.transparent),
                                              shadowColor:
                                                  WidgetStatePropertyAll<Color>(
                                                      Colors.transparent),
                                            ),
                                            onPressed: () {
                                              context.push("/edit");
                                            },
                                            label: const Text("Edit"),
                                            icon: const Icon(
                                              Icons.edit_outlined,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Hero(
                                      tag: "progressBar",
                                      child: CircularSeekBar(
                                        interactive: false,
                                        width: double.infinity,
                                        height: 200,
                                        progress: progressValue(
                                            snapshot.data!.trim1,
                                            snapshot.data!.trim2,
                                            snapshot.data!.trim3),
                                        barWidth: 8,
                                        startAngle: 90,
                                        sweepAngle: 180,
                                        strokeCap: StrokeCap.round,
                                        progressGradientColors:
                                            generateProgressColors(
                                                snapshot.data!.trim1,
                                                snapshot.data!.trim2,
                                                snapshot.data!.trim3,
                                                snapshot.data!.gradeGoal),
                                        dashWidth: 50,
                                        dashGap: 15,
                                        animation: true,
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 18.0),
                                              child: Text(
                                                snapshot.data!.gradeGoal
                                                    .toString(),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data!.trim1 != null
                                              ? snapshot.data!.trim1.toString()
                                              : "1st trimester",
                                          style: TextStyle(
                                            color: snapshot.data!.trim1 != null
                                                ? returnColor(
                                                    snapshot.data!.trim1,
                                                    snapshot.data!.gradeGoal)
                                                : HexColor("CCCCCC"),
                                            fontSize: 16,
                                            fontFamily: "Spring",
                                            fontWeight:
                                                snapshot.data!.trim1 != null
                                                    ? FontWeight.w700
                                                    : FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: 15.0,
                                          color: HexColor("CCCCCC"),
                                        ),
                                        Text(
                                          snapshot.data!.trim2 != null
                                              ? snapshot.data!.trim2.toString()
                                              : "2nd trimester",
                                          style: TextStyle(
                                            color: snapshot.data!.trim2 != null
                                                ? returnColor(
                                                    snapshot.data!.trim2,
                                                    snapshot.data!.gradeGoal)
                                                : HexColor("CCCCCC"),
                                            fontSize: 16,
                                            fontFamily: "Spring",
                                            fontWeight:
                                                snapshot.data!.trim2 != null
                                                    ? FontWeight.w700
                                                    : FontWeight.w400,
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: 15.0,
                                          color: HexColor("CCCCCC"),
                                        ),
                                        Text(
                                          snapshot.data!.trim3 != null
                                              ? snapshot.data!.trim3.toString()
                                              : "3rd trimester",
                                          style: TextStyle(
                                            color: snapshot.data!.trim3 != null
                                                ? returnColor(
                                                    snapshot.data!.trim3,
                                                    snapshot.data!.gradeGoal)
                                                : HexColor("CCCCCC"),
                                            fontSize: 16,
                                            fontFamily: "Spring",
                                            fontWeight:
                                                snapshot.data!.trim3 != null
                                                    ? FontWeight.w700
                                                    : FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 30,
                            ),

                            InkWell(
                              onTap: () {},
                              child: const Text(
                                "Need ressources?",
                                style: TextStyle(
                                  color: AppColors.blue1,
                                  fontFamily: "Spring",
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.blue1,
                                  decorationStyle: TextDecorationStyle.wavy,
                                ),
                              ),
                            )
                          ],
                        );
                      } else {
                        return const Text("no data");
                      }
                    },
                  ),
                ),
              ),
            ),
          );
  }
}
