import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapplication/config/toaster_config.dart';

import '../screens/level_one_scree.dart';
import '../screens/level_two_screen.dart';
import '../utils/app_navigator.dart';
import 'hexagonshape.dart';

class CustomGriView extends StatelessWidget {
  double gradeLevelOne;
  double gradelevelTwo;
  CustomGriView({required this.gradeLevelOne, required this.gradelevelTwo});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0.8,
      ),
      children: [
        HexagonShapeText(
          grade: gradeLevelOne,
          text: 'LevelOne',
          color: Colors.blue,
          function: () {
            AppNavigator.appNavigator(context, LevelOneScreen());
          },
        ),
        HexagonShapeText(
          grade: gradelevelTwo,
          text: 'levelTwo',
          color: Colors.deepOrange,
          function: () {
            AppNavigator.appNavigator(
                context,
                LevelTwoScreen(
                  gradeLeveOne: gradeLevelOne,
                ));
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Three',
          color: Colors.greenAccent,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Four',
          color: Colors.grey,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Five',
          color: Colors.red,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Six',
          color: Colors.lightBlue,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Seven',
          color: Colors.deepOrangeAccent,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
        HexagonShapeText(
          grade: 0,
          text: 'Level Eight',
          color: Colors.deepPurple,
          function: () {
            ToastConfig.showToast(
                msg: 'Cannot Open this Page right now',
                toastStates: ToastStates.Warning);
          },
        ),
      ],
    );
  }
}
