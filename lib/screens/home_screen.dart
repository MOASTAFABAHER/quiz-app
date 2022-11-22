import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapplication/classes/all_collors.dart';
import 'package:quizapplication/components/custom-grid-view.dart';
import 'package:quizapplication/components/hexagonshape.dart';
import 'package:quizapplication/screens/level_one_scree.dart';
import 'package:quizapplication/screens/level_two_screen.dart';
import 'package:quizapplication/screens/wellcome_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';
import '../components/custom_text.dart';
import '../config/toaster_config.dart';

class HomeScreen extends StatelessWidget {
  double? gradeLevelOne = 0;
  double? gradeLevelTwo = 1;

  HomeScreen({this.gradeLevelOne, this.gradeLevelTwo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0),
        leading: IconButton(
          onPressed: () {
            AppNavigator.appNavigator(context, WellcomeScreen());
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
      body: CustomGriView(
        gradeLevelOne: gradeLevelOne == null ? 0 : gradeLevelOne!,
        gradelevelTwo: gradeLevelTwo == null ? 0 : gradeLevelTwo!,
      ),
    );
  }
}
