import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmiCalculatorScreen extends StatelessWidget {
  EmiCalculatorScreen({Key? key}) : super(key: key);

  TextEditingController selectcarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: (48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: (24),
                    width: (24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                    onTap: () {
                      onTapArrowleft39(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Choose your EMI Options",
                    margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 15, top: 12 ,right: 15, bottom: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: (351),
                          margin:  EdgeInsets.only(left: 2 ,right: 6),
                          child: Text(
                              "Car loan EMI calculator- Calculate Car \nEMI in minutes",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18)),
                      CustomTextFormField(
                          controller: selectcarController,
                          margin:  EdgeInsets.only(left: 1, top: 14),
                          contentPadding:
                               EdgeInsets.only(left: 16, top: 9, bottom: 9),
                          textStyle: CustomTextStyles.bodyMediumLight,
                          hintText: "Select Car",
                          hintStyle: CustomTextStyles.bodyMediumLight,
                          suffix: Container(
                              margin:  EdgeInsets.only(
                                  left: 30, top: 12 ,right: 6, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIctwotonecheck)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: (40)),
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.outlineBluegray1002),
                      Container(
                          margin:  EdgeInsets.only(left: 1, top: 12),
                          padding:
                               EdgeInsets.only(left: 6, top: 8, right: 6, bottom: 8),
                          decoration: AppDecoration.outline12,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:  EdgeInsets.only(left: 10, top: 1),
                                    child: Text("Select City",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodyMediumLight)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgIctwotonecheck,
                                    height: (16),
                                    width: (16),
                                    margin:  EdgeInsets.only(top: 3, bottom: 3))
                              ])),
                      Padding(
                          padding:  EdgeInsets.only(left: 2, top: 35),
                          child: Text("Customize Car Loan EMI",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 9),
                          child: Text(
                              "Get attractive rates on car loans with instant approval",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2)),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 30),
                          child: Text("EMI",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2)),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 9, bottom: 5),
                          child: Row(children: [
                            Text("₹10,000",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.headlineLarge),
                            Padding(
                                padding:
                                     EdgeInsets.only(left: 11, top: 21, bottom: 8),
                                child: Text("for 5 years",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2))
                          ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft39(BuildContext context) {
    Navigator.pop(context);
  }
}
