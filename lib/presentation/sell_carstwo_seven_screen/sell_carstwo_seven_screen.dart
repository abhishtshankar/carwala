import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SellCarstwoSevenScreen extends StatelessWidget {
  const SellCarstwoSevenScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft35(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sell Cars", margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnotherStepper(
                          iconHeight: 40,
                          iconWidth: 40,
                          stepperDirection: Axis.horizontal,
                          activeIndex: 1,
                          barThickness:4,
                          activeBarColor: appTheme.greenA400,
                          inActiveBarColor: appTheme.greenA40001,
                          inverted: true,
                          stepperList: [
                            StepperData(
                                iconWidget: Container(
                                    width: (40),
                                    padding:  EdgeInsets.only(
                                        left: 15,
                                        top: 10,
                                        right: 15,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill2.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("A",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                // title: SizedBox(
                                //     child: Text("Car\nDetails",
                                //         maxLines: 1,
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.center,
                                //         style: CustomTextStyles
                                //             .labelLargeBlack900_1))
                            ),
                            StepperData(
                                iconWidget: Container(
                                    width: (40),
                                    padding:  EdgeInsets.only(
                                        left: 14,
                                        top: 10,
                                        right: 14,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill3.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("B",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                // title: SizedBox(
                                //     child: Text("Contact\nDetails",
                                //         maxLines: 1,
                                //         overflow: TextOverflow.ellipsis,
                                //         textAlign: TextAlign.center,
                                //         style: CustomTextStyles
                                //             .labelLargeBlack900_1))
                            ),
                            StepperData(
                                iconWidget: Container(
                                    width: (40),
                                    padding:  EdgeInsets.only(
                                        left: 14,
                                        top: 10,
                                        right: 14,
                                        bottom: 10),
                                    decoration: AppDecoration.txtFill2.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder20),
                                    child: Text("C",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900_1)),
                                // title: StepperText("Car Images",
                                //     textStyle:
                                //         CustomTextStyles.labelLargeBlack900_1)
                            )
                          ]),
                      Padding(
                          padding:  EdgeInsets.only(top: 35),
                          child: Text("Upload Car Images",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMedium18)),
                      Padding(
                          padding:  EdgeInsets.only(top: 26, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Opacity(
                                    opacity: 0.5,
                                    child: Padding(
                                        padding:  EdgeInsets.only(top: 4),
                                        child: Text("Upload Images",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumBlack900))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMdicamera,
                                    height: (24),
                                    width: (24),
                                    margin:  EdgeInsets.only(bottom: 1))
                              ])),
                      Padding(
                          padding:  EdgeInsets.only(bottom: 5),
                          child: Divider(
                              height: (4),
                              thickness: (4),
                              color: appTheme.blueGray100))
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
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary_1)
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft35(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarstwoThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoThreeScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoThreeScreen);
  }
}
