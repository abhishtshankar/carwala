import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FormPopUpScreen extends StatelessWidget {
  FormPopUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: (
              351
            ),
            child: Container(
              padding:  EdgeInsets.only(
                top: 19,
                bottom: 19,
              ),
              decoration: AppDecoration.outline8.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBar(
                    height: (
                      32
                    ),
                    title: Padding(
                      padding:  EdgeInsets.only(
                         left: 32,
                      ),
                      child: Text(
                        "Fill your Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeBlack900SemiBold,
                      ),
                    ),
                    actions: [
                      AppbarImage(
                        height: (
                          15
                        ),
                        width: (
                          15
                        ),
                        imagePath: ImageConstant.imgImage70,
                        margin:  EdgeInsets.only(
                          left: 21,
                          right: 21,
                          bottom: 17,
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    controller: nameController,
                    margin:  EdgeInsets.only(
                       left: 32,
                      top: 17,
                      right: 28,
                    ),
                    contentPadding:  EdgeInsets.only(
                       left: 12,
                      top: 9,
                  right: 12,
                      bottom: 9,
                    ),
                    textStyle: CustomTextStyles.bodySmallGray80012,
                    hintText: "Enter your Name",
                    hintStyle: CustomTextStyles.bodySmallGray80012,
                    textInputAction: TextInputAction.next,
                    filled: true,
                    fillColor: appTheme.blueGray100,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                  ),
                  CustomTextFormField(
                    controller: mobilenumberController,
                    margin:  EdgeInsets.only(
                       left: 32,
                      top: 15,
                      right: 28,
                    ),
                    contentPadding:  EdgeInsets.only(
                       left: 12,
                      top: 9,
                  right: 12,
                      bottom: 9,
                    ),
                    textStyle: CustomTextStyles.bodySmallGray80012,
                    hintText: "Enter your Mobile Number",
                    hintStyle: CustomTextStyles.bodySmallGray80012,
                    textInputType: TextInputType.phone,
                    filled: true,
                    fillColor: appTheme.blueGray100,
                    defaultBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    enabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    focusedBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                    disabledBorderDecoration:
                        TextFormFieldStyleHelper.outlineGray800TL4,
                  ),
                  CustomOutlinedButton(
                    text: "SUBMIT",
                    margin:  EdgeInsets.only(
                      left: 33,
                      top: 2,
                      right: 27,
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      double.maxFinite,
                      (
                        45
                      ),
                    ))),
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: 19,
                      bottom: 29,
                    ),
                    child: Text(
                      "< Go Back ",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallGreenA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
