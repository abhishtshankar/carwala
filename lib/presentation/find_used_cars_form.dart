import 'package:flutter/material.dart';

import '../core/utils/image_constant.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

class FindUsedCarsForm extends StatefulWidget {
  const FindUsedCarsForm({super.key});

  @override
  State<FindUsedCarsForm> createState() => _FindUsedCarsFormState();
}

class _FindUsedCarsFormState extends State<FindUsedCarsForm> {
  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: AppbarImage(
            height: (24),
            width: (24),
            svgPath: ImageConstant.imgArrowleft,
            margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
            onTap: () {
              onTapArrowleft25(context);
            }),
        title: Center(
          child: Text('Fill your form',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18,color: Colors.black),
          ),
        ),
      ),
body:  Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    CustomTextFormField(
      // controller: nameController,
      margin:  EdgeInsets.only(
         left: 32,
        top: 2,
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
      // controller: mobilenumberController,
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
      onTap: () {
        Navigator.pop(context);
      },
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

  ],
),
    );
  }
}
