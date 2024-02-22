import 'package:flutter/material.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/utils/text_style.dart';
import '../responsive/responsive.dart';
import '../responsive/responsive_width.dart';
import '../utils/colors.dart';

class ScaffoldWrapper extends StatelessWidget {
  final String appBarTitle;
  final Widget body;
  bool isBackButton;
  ScaffoldWrapper(
      {super.key,
      required this.body,
      required this.appBarTitle,
      this.isBackButton = true});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: CustomColors.appPrimaryColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            leadingWidth: isBackButton ? 10.w : 0,
            backgroundColor: CustomColors.appPrimaryColor,
            centerTitle: Responsive.isDesktop() ? true : false,
            leading: isBackButton
                ? GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: CustomColors.whiteColor,
                      size: 20.sp,
                    ),
                  )
                : const SizedBox(),
            title: Text(
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
      ),
    );
  }
}
