import 'package:flutter/material.dart';
import 'package:smart_search/app/core/mixins/validation_mixin.dart';

import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/responsive/responsive_width.dart';
import 'package:smart_search/app/core/shared_widget/common%20widget.dart';
import 'package:smart_search/app/core/utils/colors.dart';
import 'package:smart_search/app/core/utils/text_style.dart';
import 'package:smart_search/app/features/home/presentation/pages/home.dart';

class Login extends StatelessWidget with FormValidationMixin {
  Login({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return SingleChildScrollView(
              child: Material(
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  color: CustomColors.appSecondryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.w,
                        color: CustomColors.whiteColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 1.5.w),
                        child: Image.asset(
                          'assets/images/part_of_truck_image.png',
                          alignment: Alignment.center,
                          height: 20.h,
                          width: 96.w,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: 70.w,
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        decoration: const BoxDecoration(
                            color: CustomColors.darkGreyColor,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomColors.blackColor,
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 0.75)),
                            ]),
                        child: TextFormField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            helperStyle: CustomTextStyle.textStyle500(
                              fontSize: widgetSize(
                                  desktop: 14.sp, tablet: 15.sp, mobile: 16.sp),
                              color: CustomColors.whiteColor,
                            ),
                          ),
                          validator: validateEmail, // Validating email
                          onFieldSubmitted: (value) {
                            _emailFocusNode.unfocus();
                            FocusScope.of(context)
                                .requestFocus(_passwordFocusNode);
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 70.w,
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        decoration: const BoxDecoration(
                            color: CustomColors.darkGreyColor,
                            boxShadow: [
                              BoxShadow(
                                  color: CustomColors.blackColor,
                                  blurRadius: 7.0,
                                  offset: Offset(0.0, 0.75)),
                            ]),
                        child: TextFormField(
                          controller: _passController,
                          focusNode: _passwordFocusNode,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            helperStyle: CustomTextStyle.textStyle500(
                              fontSize: widgetSize(
                                  desktop: 14.sp, tablet: 15.sp, mobile: 16.sp),
                              color: CustomColors.whiteColor,
                            ),
                          ),
                          validator: validatePassword, // Validating password
                          onFieldSubmitted: (value) {
                            _passwordFocusNode.unfocus();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        width: 100.w,
                        color: CustomColors.appSecondryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 1.5.w),
                        child: Image.asset(
                          'assets/images/Picture1.png',
                          alignment: Alignment.center,
                          height: 7.h,
                          width: 10.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Center(
                          child: customButton(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Home()));
                                }
                              },
                              width: 50.w,
                              text: "Login",
                              buttonColor: CustomColors.appPrimaryColor,
                              textColor: CustomColors.whiteColor)),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                          child: customButton(
                              onTap: () {},
                              width: 50.w,
                              text: "Sign Up",
                              buttonColor: CustomColors.darkGreyColor,
                              textColor: CustomColors.blackColor)),
                    ],
                  ),
                ),
              ),
            );
          },
          context: context),
    );
  }
}
