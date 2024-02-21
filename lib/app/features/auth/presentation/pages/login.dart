import 'package:flutter/material.dart';
import 'package:smart_search/app/core/mixins/validation_mixin.dart';

import 'package:smart_search/app/core/responsive/responsive_sizer/responsive_sizer.dart';
import 'package:smart_search/app/core/shared_widget/common%20widget.dart';
import 'package:smart_search/app/core/utils/colors.dart';

class Login extends StatelessWidget with FormValidationMixin {
  Login({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

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
                        height: 15.h,
                      ),
                      TextFormField(
                        controller: _emailController,
                        focusNode: _emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        validator: validateEmail, // Validating email
                        onFieldSubmitted: (value) {
                          _emailFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _passController,
                        focusNode: _passwordFocusNode,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          errorMaxLines: 3,
                        ),
                        validator: validatePassword, // Validating password
                        onFieldSubmitted: (value) {
                          _passwordFocusNode.unfocus();
                        },
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        width: 100.w,
                        color: CustomColors.appSecondryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 1.5.w),
                        child: Image.asset(
                          'assets/images/eng_fr_logo.jpg',
                          alignment: Alignment.center,
                          height: 10.h,
                          width: 15.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Center(
                          child: buttonWidget(
                              onTap: () {
                                // if (_formKey.currentState!.validate()) {
                                //   ScaffoldMessenger.of(context).showSnackBar(
                                //     const SnackBar(content: Text('Thank you!')),
                                //   );
                                // }
                              },
                              text: "Login",
                              buttonColor: CustomColors.appPrimaryColor,
                              textColor: CustomColors.whiteColor)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child: buttonWidget(
                              onTap: () {},
                              text: "Sign Up",
                              buttonColor: CustomColors.appSecondryColor,
                              textColor: CustomColors.whiteColor)),
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
