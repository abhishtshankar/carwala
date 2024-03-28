import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInOneScreen extends StatelessWidget {
  LogInOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController mobilenumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: 69,
                  ),
                  child: Text(
                    "Welcome to Appname",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeInterBlack900,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: 183,
                  ),
                  child: Text(
                    "Logo",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleLargeInterBlack900,
                  ),
                ),
                Spacer(),
                Container(
                  width: double.maxFinite,
                  padding:  EdgeInsets.only(
                    left: 24,
                    top: 19,
                    right: 24,
                    bottom: 19,
                  ),
                  decoration: AppDecoration.outline13.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:  EdgeInsets.only(
                            top: 8,
                          ),
                          child: Text(
                            "Enter 10 digit mobile number to Login",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallPrimary_1,
                          ),
                        ),
                      ),
                      CustomTextFormField(
                        controller: mobilenumberController,
                        margin:  EdgeInsets.only(
                          left: 25,
                          top: 11,
                          right: 25,
                        ),
                        contentPadding:  EdgeInsets.only(
                          top: 11,
                          right: 30,
                          bottom: 11,
                        ),
                        textStyle: CustomTextStyles.bodySmallGray90087,
                        hintText: "Mobile No.",
                        hintStyle: CustomTextStyles.bodySmallGray90087,
                        textInputType: TextInputType.phone,
                        prefix: Container(
                          margin:  EdgeInsets.only(
                            left: 16,
                            top: 10,
                            right: 8,
                            bottom: 10,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIcomoonfreemobile,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: (
                            40
                          ),
                        ),
                        filled: true,
                        fillColor: theme.colorScheme.primary,
                        defaultBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray600d9,
                        enabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray600d9,
                        focusedBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray600d9,
                        disabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray600d9,
                      ),
                      CustomElevatedButton(
                        text: "Log IN",
                        margin:  EdgeInsets.only(
                          left: 25,
                          top: 2,
                          right: 25,
                        ),
                        buttonStyle: CustomButtonStyles.fillGreen600.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          (
                            40
                          ),
                        ))),
                        buttonTextStyle:
                            CustomTextStyles.titleSmallPrimarySemiBold,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(
                              opacity: 0.9,
                              child: Padding(
                                padding:  EdgeInsets.only(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "Don’t have an account?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallPrimary_2
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                left: 8,
                                top: 1,
                              ),
                              child: Text(
                                "Sign Up",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    CustomTextStyles.titleSmallPrimaryExtraBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
