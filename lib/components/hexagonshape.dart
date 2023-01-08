import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/src/all_collors.dart';
import 'package:quizapplication/components/custom_text.dart';

import 'star.dart';

class HexagonShapeText extends StatelessWidget {
  String text;
  String number;
  var color;
  var function;
  double grade;
  HexagonShapeText(
      {required this.number,
      required this.text,
      required this.color,
      this.function,
      required this.grade});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Column(
        children: [
          Star(
            grade: grade,
          ),
          Container(
            width: 150.w,
            height: 140.h,
            decoration: ShapeDecoration(
                color: color,
                shape: const PolygonBorder(
                  sides: 5,
                  rotate: 70,
                )),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  color: AllColors.whiteColor,
                  data: text,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomText(
                  color: AllColors.whiteColor,
                  data: number,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
