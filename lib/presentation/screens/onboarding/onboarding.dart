import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:najahni/core/constants/colors.dart';
import 'package:najahni/core/models/student_model.dart';
import 'package:najahni/data/local/db/app_db.dart';
import 'package:najahni/presentation/screens/onboarding/ask_name.dart';
import 'package:najahni/presentation/screens/onboarding/grade_goal.dart';
import 'package:najahni/presentation/screens/onboarding/school_lvl.dart';
import 'package:najahni/presentation/screens/onboarding/welcome.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;
  int _pageIndex = 0;

  List pagesList =[const OnBoardingContent(), const AskName(), const SchoolLvl(), const GradeGoal()];

  void saveStudentData() {
    IsarServices isarServices = IsarServices();
    final student = StudentModel();
    student.name = nameController.text;
    student.schoolLvl = lvlController.text;
    student.section = sectionController.text;
    student.gradeGoal = double.parse(goalController.text);
    student.mainTask = "";
    student.isDone = false;
    isarServices.saveStudent(student);
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
          },
          child: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Page to change
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: pagesList.length,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return pagesList[index];
                },),
              ),


              Row(
                children: [
                  ...List.generate(
                    pagesList.length,
                    (index) => Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: DotIndicator(isActive: index == _pageIndex,),
                  ),
                  ),

                  const Spacer(),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: AppColors.blue1,
                      ),
                      onPressed: () {
                        if(_pageIndex == pagesList.length - 1){
                          saveStudentData();
                          context.go("/main");
                        }else{
                          _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                        }
                      }, child: _pageIndex <= 2? const Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 25,) : const Icon(Icons.rocket_rounded, color: Colors.white, size: 25,)),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key, this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive? AppColors.blue1 : AppColors.blue1.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(12))
      ), duration: const Duration(milliseconds: 300),
    );
  }
}
