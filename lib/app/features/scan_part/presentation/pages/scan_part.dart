import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/shared_widget/common%20widget.dart';
import 'package:smart_search/app/core/shared_widget/scaffold_wrapper.dart';
import 'package:smart_search/app/core/utils/colors.dart';
import 'package:smart_search/app/features/part_details/presentation/pages/part_details.dart';

class ScanPart extends StatefulWidget {
  const ScanPart({super.key});

  @override
  State<ScanPart> createState() => _ScanPartState();
}

class _ScanPartState extends State<ScanPart> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return ScaffoldWrapper(
            appBarTitle: "SCAN/SELECT VEHICLE MODEL​",
            body: SizedBox(
                width: 100.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PartDetails()));
                      },
                      child: Image.asset(
                        "assets/images/camera_icon.png",
                        width: 50.w,
                        height: 50.w,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                        child: customButton(
                            onTap: () {},
                            width: 70.w,
                            text: "LONE STAR 2008",
                            buttonColor: CustomColors.darkGreyColor,
                            textColor: CustomColors.blackColor)),
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                        child: customButton(
                            onTap: () {},
                            width: 70.w,
                            text: "INT. 9900i LT",
                            buttonColor: CustomColors.darkGreyColor,
                            textColor: CustomColors.blackColor)),
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                        child: customButton(
                            onTap: () {},
                            width: 70.w,
                            text: "CUMMINS F2.8/3.8",
                            buttonColor: CustomColors.darkGreyColor,
                            textColor: CustomColors.blackColor)),
                  ],
                )),
          );
        },
        context: context);
  }
}
