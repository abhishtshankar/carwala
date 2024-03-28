import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SellCarstwoThreeScreen extends StatelessWidget {
  const SellCarstwoThreeScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft34(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sell Cars", margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnotherStepper(
                          iconHeight: 40,
                          iconWidth: 40,
                          stepperDirection: Axis.horizontal,
                          activeIndex: 1,
                          barThickness:4,
                          activeBarColor: appTheme.greenA400,
                          inActiveBarColor: appTheme.blueGray100,
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
                                    decoration: AppDecoration.txtFill.copyWith(
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
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding:  EdgeInsets.only(top: 32),
                              child: Text("Contact Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMedium18))),
                      Opacity(
                          opacity: 0.5,
                          child: Padding(
                              padding:  EdgeInsets.only(top: 32),
                              child: Text("Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumBlack900))),
                      Padding(
                          padding:  EdgeInsets.only(top: 2),
                          child: Divider(
                              height: (4),
                              thickness: (4),
                              color: appTheme.blueGray100)),
                      Opacity(
                          opacity: 0.5,
                          child: Padding(
                              padding:  EdgeInsets.only(top: 27),
                              child: Text("Mobile ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumBlack900))),
                      Padding(
                          padding:  EdgeInsets.only(top: 2),
                          child: Divider(
                              height: (4),
                              thickness: (4),
                              color: appTheme.blueGray100)),
                      Padding(
                          padding:  EdgeInsets.only(top: 34, bottom: 5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant
                                    .imgMdicheckboxoutlineGreenA40001,
                                height: (24),
                                width: (24)),
                            Padding(
                                padding:  EdgeInsets.only(left: 6, top: 3),
                                child: Text(
                                    "Allow important WhatsApp notifications",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium))
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
  onTapArrowleft34(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarstwoSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoSixScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoSixScreen);
  }

  /// Navigates to the sellCarstwoSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoSevenScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoSevenScreen);
  }
}
