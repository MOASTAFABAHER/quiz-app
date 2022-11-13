import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapplication/classes/all_collors.dart';

import 'custom_text.dart';

class OneButton extends StatefulWidget {
  double width;
  double height;
  var color;
  var textColor;
  var function;

  double? fontSize;
  String data;

  OneButton(
      {required this.data,
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
        child: Center(
            child: CustomText(
          data: widget.data,
          fontSize: widget.fontSize,
          color: AllColors.text,
        )),
      ),
    );
  }
}
