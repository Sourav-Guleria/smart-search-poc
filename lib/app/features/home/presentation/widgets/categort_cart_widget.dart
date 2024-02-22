import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_search/app/core/models/category_model.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/responsive/responsive_width.dart';
import 'package:smart_search/app/core/utils/colors.dart';
import 'package:smart_search/app/core/utils/text_style.dart';

class CategoryCartWidget extends StatelessWidget {
  CategoryModel model;
  CategoryCartWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      // padding: EdgeInsets.all(1.w),
      decoration: const BoxDecoration(
          color: CustomColors.appPrimaryColor,
          // shape: BoxShape.circle, // BoxShape.circle or BoxShape.retangle
          //color: const Color(0xFF66BB6A),
          boxShadow: [
            BoxShadow(
                color: CustomColors.blackColor,
                blurRadius: 7.0,
                offset: Offset(0.0, 0.75)),
          ]),
      margin: EdgeInsets.all(2.w),
      child: Column(
        children: [
          Image.asset(
            model.image,
            width: 35.w,
            height: 35.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            height: 6.h,
            alignment: Alignment.bottomCenter,
            child: Text(
              model.title.toUpperCase(),
              maxLines: 5,
              textAlign: TextAlign.center,
              style: CustomTextStyle.textStyle500(
                  color: CustomColors.whiteColor,
                  fontSize:
                      widgetSize(desktop: 14.sp, tablet: 16.sp, mobile: 14.sp)),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
