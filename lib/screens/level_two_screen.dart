import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/classes/levels_data.dart';
import 'package:quizapplication/components/grade-view.dart';
import 'package:quizapplication/screens/home_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';

import '../classes/all_collors.dart';
import '../components/custom_text.dart';
import '../components/one_button.dart';

class LevelTwoScreen extends StatefulWidget {
  double gradeLeveOne;
  LevelTwoScreen({required this.gradeLeveOne});

  @override
  State<LevelTwoScreen> createState() => _LevelTwoScreenState();
}

class _LevelTwoScreenState extends State<LevelTwoScreen> {
  int questionCounter = 0;
  int counterA = 0;
  int counterB = 0;
  int counterC = 0;
  int counterD = 0;
  double grade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            AppNavigator.appNavigator(
              context,
              HomeScreen(
                gradeLevelTwo: grade,
                gradeLevelOne: widget.gradeLeveOne,
              ),
              isFinished: true,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: questionCounter != 6
            ? CustomText(
                data: 'level Two ',
                fontWeight: FontWeight.bold,
                color: AllColors.greenColor,
              )
            : CustomText(
                data: 'Results',
                color: AllColors.greenColor,
              ),
      ),
      backgroundColor: AllColors.backgroundColor,
      body: Center(
        child: questionCounter == 6
            ? Gradview(grade: grade)
            : Column(
                children: [
                  CustomText(
                    data: '${levelTwoData['Question${questionCounter}']}',
                    color: AllColors.text,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  OneButton(
                      letter: 'A',
                      function: () {
                        setState(() {
                          if (levelTwoData['AnswerA${counterA}IsTrue'] ==
                              null) {
                            print('no');
                            print(grade);
                          } else {
                            print('yes');
                            grade++;
                            print(grade);
                          }
                          countersIncrements();
                        });
                      },
                      data: '${levelTwoData['AnswerA$counterA']}',
                      width: 200.w,
                      height: 40.h,
                      color: AllColors.answerTextColor),
                  SizedBox(
                    height: 10.h,
                  ),
                  OneButton(
                      letter: 'B',
                      function: () {
                        setState(() {
                          if (levelTwoData['AnswerB${counterB}IsTrue'] ==
                              null) {
                            print('no');
                            print(grade);
                          } else {
                            print('yes');
                            grade++;
                            print(grade);
                          }
                          countersIncrements();
                          ;
                        });
                      },
                      data: '${levelTwoData['AnswerB$counterB']}',
                      width: 200.w,
                      height: 40.h,
                      color: AllColors.answerTextColor),
                  SizedBox(
                    height: 10.h,
                  ),
                  OneButton(
                      letter: 'C',
                      function: () {
                        setState(() {
                          if (levelTwoData['AnswerC${counterC}IsTrue'] ==
                              null) {
                            print('no');
                            print(grade);
                          } else {
                            print('yes');
                            grade++;
                            print(grade);
                          }
                          countersIncrements();
                          ;

                          ;
                        });
                      },
                      data: '${levelTwoData['AnswerC$counterC']}',
                      width: 200.w,
                      height: 40.h,
                      color: AllColors.answerTextColor),
                  SizedBox(
                    height: 10.h,
                  ),
                  OneButton(
                      letter: 'D',
                      function: () {
                        setState(() {
                          if (levelTwoData['AnswerD${counterD}IsTrue'] ==
                              null) {
                            print('no');
                            print(grade);
                          } else {
                            print('yes');
                            grade++;
                            print(grade);
                          }
                          countersIncrements();
                          ;
                        });
                      },
                      data: '${levelTwoData['AnswerD$counterD']}',
                      width: 200.w,
                      height: 40.h,
                      color: AllColors.answerTextColor),
                ],
              ),
      ),
    );
  }

  countersIncrements() {
    counterA++;
    counterB++;
    counterC++;
    counterD++;
    questionCounter++;
  }
}
