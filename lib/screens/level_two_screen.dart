import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/classes/levels_data.dart';

import '../classes/all_collors.dart';
import '../components/custom_text.dart';
import '../components/one_button.dart';

class LevelTwoScreen extends StatefulWidget {
  const LevelTwoScreen({super.key});

  @override
  State<LevelTwoScreen> createState() => _LevelTwoScreenState();
}

class _LevelTwoScreenState extends State<LevelTwoScreen> {
  int questionCounter = 0;
  int counterA = 0;
  int counterB = 0;
  int counterC = 0;
  int counterD = 0;
  int grade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: CustomText(
          data: 'level Two ',
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      backgroundColor: AllColors.backgroundColor,
      body: Center(
        child: questionCounter == 6
            ? CustomText(
                data: 'your Grade is $grade \\6',
                fontSize: 18.sp,
                color: AllColors.text,
              )
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
