import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizapplication/classes/all_collors.dart';
import 'package:quizapplication/components/custom_text.dart';
import 'package:quizapplication/components/one_button.dart';
import 'package:quizapplication/config/toaster_config.dart';
import 'package:quizapplication/screens/home_screen.dart';
import 'package:quizapplication/utils/app_navigator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
              'https://images.pexels.com/photos/7092451/pexels-photo-7092451.jpeg?auto=compress&cs=tinysrgb&w=1600',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                data: 'Quizzlezz',
                fontSize: 22.sp,
                color: AllColors.text,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 40.h,
              ),
              OneButton(
                  fontSize: 18.sp,
                  function: () {
                    ToastConfig.showToast(
                        msg: 'cannot open this page right now',
                        toastStates: ToastStates.Warning);
                  },
                  data: 'About',
                  width: 200.w,
                  height: 40.h,
                  color: AllColors.containerUnSelected),
              SizedBox(
                height: 20.h,
              ),
              OneButton(
                  function: () {
                    AppNavigator.appNavigator(context, HomeScreen());
                  },
                  fontSize: 18.sp,
                  data: 'Go',
                  width: 200.w,
                  height: 40.h,
                  color: AllColors.containerSelectedColor),
            ],
          ),
        )
      ]),
    );
  }
}
