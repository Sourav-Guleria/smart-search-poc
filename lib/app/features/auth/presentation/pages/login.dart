import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/utils/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 0.w),
                  child: Image.asset(
                    'assets/images/Picture2.jpg',
                    alignment: Alignment.center,
                    height: 20.h,
                    width: 90.w,
                    scale: 2.5,
                    fit: BoxFit.cover,
                  ),
                ), //Image.asset
                Container(
                  height: 80.h,
                  width: 100.w,
                  color: CustomColors.appSecondryColor,
                )
              ],
            ),
          );
        },
        context: context);
  }
}
