import 'package:flutter/material.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/utils/text_style.dart';
import '../responsive/responsive.dart';
import '../responsive/responsive_width.dart';
import '../utils/colors.dart';

class ScaffoldWrapper extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  const ScaffoldWrapper(
      {super.key, required this.body, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: CustomColors.appPrimaryColor,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: CustomColors.appPrimaryColor,
          centerTitle: Responsive.isDesktop() ? true : false,
          title: Flexible(
            child: Text(
              appBarTitle,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyle.textStyle900(
                fontSize: widgetSize(
                  desktop: 14.sp,
                  tablet: 15.sp,
                  mobile: 18.sp,
                ),
                color: CustomColors.whiteColor,
              ),
            ),
          ),
        ),
        body: Container(
          width: 100.w,
          height: 100.h - 72,
          color: CustomColors.appSecondryColor,
          child: ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h), child: body),
            ),
          ),
        ),
      ),
    );
  }
}
