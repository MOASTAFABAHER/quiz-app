import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/classes/levels_data.dart';
import 'package:quizapplication/components/grade-view.dart';
import 'package:quizapplication/components/one_button.dart';
import 'package:quizapplication/screens/home_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';

import '../classes/all_collors.dart';
import '../components/custom_text.dart';

class LevelOneScreen extends StatefulWidget {
  LevelOneScreen({super.key});

  @override
  State<LevelOneScreen> createState() => _LevelOneScreenState();
}

class _LevelOneScreenState extends State<LevelOneScreen> {
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
                    gradeLevelOne: grade,
                  ),
                  isFinished: true);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
          title: questionCounter != 6
              ? CustomText(
                  data: 'level One ',
                  fontWeight: FontWeight.bold,
                  color: AllColors.greenColor,
                )
              : CustomText(
                  data: 'Results',
                  color: AllColors.greenColor,
                )),
      backgroundColor: AllColors.backgroundColor,
      body: questionCounter == 6
          ? Gradview(grade: grade)
          : Center(
              child: Column(
                children: [
                  CustomText(
                    data: '${levelOneData['Question${questionCounter}']}',
                    color: AllColors.text,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  OneButton(
                      letter: 'A',
                      function: () {
                        setState(() {
                          if (levelOneData['AnswerA${counterA}IsTrue'] ==
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
                      data: '${levelOneData['AnswerA$counterA']}',
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
                          if (levelOneData['AnswerB${counterB}IsTrue'] ==
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
                      data: '${levelOneData['AnswerB$counterB']}',
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
                          if (levelOneData['AnswerC${counterC}IsTrue'] ==
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
                      data: '${levelOneData['AnswerC$counterC']}',
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
                          if (levelOneData['AnswerD${counterD}IsTrue'] ==
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
                      data: '${levelOneData['AnswerD$counterD']}',
                      width: 200.w,
                      height: 40.h,
                      color: AllColors.answerTextColor),
                ],
              ),
            ),
    );
  }

  countersIncrements() {
    questionCounter++;
    counterA++;
    counterB++;
    counterC++;
    counterD++;
  }
}
