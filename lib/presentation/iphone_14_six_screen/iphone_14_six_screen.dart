import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixScreen extends StatelessWidget {
  const Iphone14SixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: CustomAppBar(
                height: (48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: (24),
                    width: (24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                    onTap: () {
                      onTapArrowleft42(context);
                    }),
                title: AppbarSubtitle3(
                    text: "FInd New Cars", margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Select your preferred Fuel Type",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMedium18),
                      Padding(
                          padding:  EdgeInsets.only(top: 18, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: (56),
                                    width: (170),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding:  EdgeInsets.only(top: 16),
                                                  child: Text("Petrol",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: (56),
                                                  width: (170),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: appTheme
                                                              .blueGray100,
                                                          width:
                                                              (
                                                                  1)))))
                                        ])),
                                SizedBox(
                                    height: (56),
                                    width: (170),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding:  EdgeInsets.only(top: 16),
                                                  child: Text("Diesel",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: (56),
                                                  width: (170),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: appTheme
                                                              .blueGray100,
                                                          width:
                                                              (
                                                                  1)))))
                                        ]))
                              ])),
                      Padding(
                          padding:  EdgeInsets.only(top: 14, right: 1, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: (56),
                                    width: (170),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding:  EdgeInsets.only(top: 16),
                                                  child: Text("CNG",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: (56),
                                                  width: (170),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: appTheme
                                                              .blueGray100,
                                                          width:
                                                              (
                                                                  1)))))
                                        ])),
                                CustomOutlinedButton(
                                    text: "Electric",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray1002
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size((170),
                                                        (56)))),
                                    buttonTextStyle:
                                        CustomTextStyles.titleSmallBlack900_1)
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding:  EdgeInsets.only(left: 18, right: 16, bottom: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                          text: "PREVIOUS",
                          buttonStyle: CustomButtonStyles.outlineRedA700TL4
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size((164),
                                          (45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallRedA700_1,
                          onTap: () {
                            onTapPrevious(context);
                          }),
                      CustomElevatedButton(
                          text: "NEXT",
                          buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  (171),
                                  (45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                          onTap: () {
                            onTapNext(context);
                          })
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft42(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsScreen);
  }

  /// Navigates to the sellCarstwoOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoOneScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14SevenScreen);
  }
}
