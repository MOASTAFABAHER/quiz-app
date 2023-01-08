import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/src/all_collors.dart';
import 'package:quizapplication/classes/levels_data.dart';
import 'package:quizapplication/components/custom_text.dart';
import 'package:quizapplication/components/one_button.dart';
import 'package:quizapplication/screens/home_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';

class Gradview extends StatelessWidget {
  double gradeLevelOne;
  double gradeLevelTwo;
  bool isLevelOne;
  Gradview(
      {required this.gradeLevelOne,
      required this.gradeLevelTwo,
      required this.isLevelOne});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            data: 'Total Correct answers ',
            color: AllColors.whiteColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(
            height: 10.h,
          ),
          isLevelOne == true
              ? CustomText(
                  data: '$gradeLevelOne out of 6 Questions ',
                  color: AllColors.greenColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                )
              : CustomText(
                  data: '$gradeLevelTwo out of 6 Questions ',
                  color: AllColors.greenColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(16),
              width: 200.w,
              height: 250.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AllColors.containerSelectedColor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    data: 'your final score is',
                    color: AllColors.whiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CircleAvatar(
                      backgroundColor: AllColors.yelloColor,
                      radius: 60,
                      child: isLevelOne == true
                          ? CustomText(
                              data: '${(gradeLevelOne * 50 / 3).round()} %',
                            )
                          : CustomText(
                              data: '${(gradeLevelTwo * 50 / 3).round()} %',
                            )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OneButton(
                  function: () {
                    AppNavigator.appNavigator(
                        context,
                        HomeScreen(
                          gradeLevelOne: gradeLevelOne,
                          gradeLevelTwo: gradeLevelTwo,
                        ),
                        isFinished: true);
                  },
                  fontSize: 18.sp,
                  data: 'Home page',
                  width: 200.w,
                  height: 60.h,
                  color: AllColors.containerSelectedColor),
            ],
          )
        ],
      ),
    );
  }
}
