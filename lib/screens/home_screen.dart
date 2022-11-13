import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapplication/classes/all_collors.dart';
import 'package:quizapplication/screens/level_one_scree.dart';
import 'package:quizapplication/screens/level_two_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';

import '../components/container_of_level.dart';
import '../components/custom_text.dart';
import '../config/toaster_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: CustomText(
          data: 'Levels',
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
      backgroundColor: AllColors.backgroundColor,
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ContainerOfLevels(
            color: Colors.deepOrange,
            text: 'levelOne',
            onPressed: () {
              AppNavigator.appNavigator(context, LevelOneScreen());
            },
          ),
          ContainerOfLevels(
            color: Colors.grey,
            text: 'LevelTwo',
            onPressed: () {
              AppNavigator.appNavigator(context, LevelTwoScreen());
            },
          ),
          ContainerOfLevels(
            color: Colors.pink,
            text: 'LevelThree',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          ),
          ContainerOfLevels(
            color: Colors.yellow,
            text: 'LevelFour',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          ),
          ContainerOfLevels(
            color: Colors.deepOrange,
            text: 'LevelFive',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          ),
          ContainerOfLevels(
            color: Colors.grey,
            text: 'LevelSix',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          ),
          ContainerOfLevels(
            color: Colors.pink,
            text: 'levelSeven',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          ),
          ContainerOfLevels(
            color: Colors.yellow,
            text: 'levelEight',
            onPressed: () {
              ToastConfig.showToast(
                  msg: 'cannot open this page right now',
                  toastStates: ToastStates.Warning);
            },
          )
        ],
      ),
    );
  }
}
