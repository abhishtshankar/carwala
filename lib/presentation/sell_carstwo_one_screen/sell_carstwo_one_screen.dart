import '../sell_carstwo_one_screen/widgets/chipviewframesi_item_widget.dart';
import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SellCarstwoOneScreen extends StatelessWidget {
  SellCarstwoOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                      onTapArrowleft29(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sell Cars", margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 15, top: 6, right: 15, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AnotherStepper(
                          iconHeight: 40,
                          iconWidth: 40,
                          stepperDirection: Axis.horizontal,
                          activeIndex: 0,
                          barThickness:4,
                          activeBarColor: appTheme.blueGray100,
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
                                    decoration: AppDecoration.txtFill.copyWith(
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
                              padding:  EdgeInsets.only(top: 35),
                              child: Text("Select your Car",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleMedium18))),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 44),
                          child: Text("YOU HAVE SELECTED",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2)),
                      CustomElevatedButton(
                          text: "Hyundai",
                          margin:  EdgeInsets.only(left: 1, top: 13),
                          rightIcon: Container(
                              margin:  EdgeInsets.only(left: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          buttonStyle: CustomButtonStyles.fillTeal900.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(Size(
                                  (108),
                                  (26)))),
                          buttonTextStyle: CustomTextStyles.bodySmallPrimary),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 22),
                          child: Wrap(
                              runSpacing: (5),
                              spacing: (5),
                              children: List<Widget>.generate(
                                  3, (index) => ChipviewframesiItemWidget()))),
                      Container(
                          height: (27),
                          width: (359),
                          margin:  EdgeInsets.only(top: 21, bottom: 5),
                          child: CustomDropDown(
                              width: (359),
                              hintText: "Select Version",
                              textStyle: CustomTextStyles.bodyMediumBlack900,
                              alignment: Alignment.center,
                              items: dropdownItemList,
                              defaultBorderDecoration:
                                  DropDownStyleHelper.underLineBluegray100,
                              enabledBorderDecoration:
                                  DropDownStyleHelper.underLineBluegray100,
                              focusedBorderDecoration:
                                  DropDownStyleHelper.underLineBluegray100,
                              disabledBorderDecoration:
                                  DropDownStyleHelper.underLineBluegray100,
                              onChanged: (value) {}))
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
  onTapArrowleft29(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarstwoFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoFiveScreen.
  onTapPrevious(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoFiveScreen);
  }

  /// Navigates to the sellCarstwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoScreen);
  }
}
