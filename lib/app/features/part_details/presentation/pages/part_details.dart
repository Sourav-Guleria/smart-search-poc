import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/responsive/responsive_width.dart';
import 'package:smart_search/app/core/shared_widget/scaffold_wrapper.dart';
import 'package:smart_search/app/core/utils/colors.dart';
import 'package:smart_search/app/core/utils/text_style.dart';

class PartDetails extends StatefulWidget {
  final String image;
  const PartDetails({super.key,required this.image});

  @override
  State<PartDetails> createState() => _PartDetailsState();
}

class _PartDetailsState extends State<PartDetails> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return ScaffoldWrapper(
            appBarTitle: "PART IDENTIFIED​",
            body: SizedBox(
                width: 100.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(
                      color: CustomColors.whiteColor,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Image.file(
                            File(widget.image),
                            width: 30.w,
                            height: 30.w,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Column(
                            children: [
                              Text(
                                "Air System Components",
                                style: CustomTextStyle.textStyle500(
                                    color: CustomColors.whiteColor,
                                    fontSize: widgetSize(
                                        desktop: 14.sp,
                                        tablet: 16.sp,
                                        mobile: 17.sp)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: CustomColors.whiteColor,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Text(
                        "A leaking or malfunctioning air brake system can have deadly consequences. Our thorough installation and repair process guarantee your safety on the road.Find out what we can do for your air brake system today.",
                        style: CustomTextStyle.textStyle500(
                            color: CustomColors.whiteColor,
                            fontSize: widgetSize(
                                desktop: 14.sp, tablet: 16.sp, mobile: 17.sp)),
                      ),
                    ),
                  ],
                )),
          );
        },
        context: context);
  }
}
