import 'package:flutter/material.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/utils/text_style.dart';
import '../responsive/responsive_width.dart';
import '../utils/colors.dart';

Widget customButton({
  required String text,
  required Color buttonColor,
  required Function() onTap,
  Color? textColor,
  double? width,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          boxShadow: const [
            BoxShadow(
                color: CustomColors.blackColor,
                blurRadius: 7.0,
                offset: Offset(0.0, 0.75)),
          ]),
      padding: EdgeInsets.symmetric(
        horizontal: widgetSize(desktop: 2.w, tablet: 3.w, mobile: 4.w),
        vertical: 1.5.h,
      ),
      child: Text(
        text,
        style: CustomTextStyle.textStyle500(
          fontSize: widgetSize(desktop: 14.sp, tablet: 15.sp, mobile: 16.sp),
          color: textColor ?? CustomColors.whiteColor,
        ),
      ),
    ),
  );
}

Widget errorWidget({required String errorMsg}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 20.h,
      horizontal: 20.h,
    ),
    child: Center(
      child: Text(
        errorMsg,
        style: CustomTextStyle.textStyle700(),
      ),
    ),
  );
}

Widget loginErrorWidget({required String errorMsg}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Text(
          errorMsg,
          style: CustomTextStyle.textStyle500(
            fontSize: 15.sp,
            color: CustomColors.blackColor,
          ),
        ),
      ),
      SizedBox(
        height: 3.h,
      ),
      customButton(
        text: "Login",
        buttonColor: CustomColors.buttonBlueColor,
        onTap: () {},
        textColor: CustomColors.whiteColor,
      ),
    ],
  );
}

Widget loaderWidget({EdgeInsets? padding}) {
  return Padding(
    padding: padding ?? EdgeInsets.symmetric(vertical: 40.h, horizontal: 40.w),
    child: const Center(
      child: CircularProgressIndicator(),
    ),
  );
}
