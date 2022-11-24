import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/classes/all_collors.dart';

import 'custom_text.dart';

class OneButton extends StatefulWidget {
  double width;
  double height;
  var letter;
  var color;
  var textColor;
  var function;
  var fontWeight;

  double? fontSize;
  String data;

  OneButton(
      {this.letter,
      this.fontWeight,
      required this.data,
      required this.width,
      required this.height,
      required this.color,
      this.function,
      this.textColor,
      this.fontSize});

  @override
  State<OneButton> createState() => _OneButtonState();
}

class _OneButtonState extends State<OneButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              widget.letter != null
                  ? CircleAvatar(
                      backgroundColor: AllColors.backgroundColor,
                      child: CustomText(
                        color: AllColors.whiteColor,
                        data: widget.letter,
                      ),
                    )
                  : SizedBox(
                      width: 30.w,
                    ),
              SizedBox(
                width: 20.w,
              ),
              Center(
                  child: CustomText(
                fontWeight: widget.fontWeight,
                data: widget.data,
                fontSize: widget.fontSize,
                color: AllColors.whiteColor,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
