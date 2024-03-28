import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PowerScreen extends StatelessWidget {
  PowerScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: appTheme.gray10001,
        appBar: CustomAppBar(height: (36),
            leadingWidth: 40,
            leading: AppbarImage(height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 16),
                onTap: () {
                  onTapArrowleft17(context);
                }),
            title: AppbarSubtitle3(
                text: "Sort & filter By", margin: EdgeInsets.only(left: 16))),
        body: SizedBox(child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12),
            child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 5),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomDropDown(icon: Container(
                          margin: EdgeInsets.only(left: 30, right: 16),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlack900)),
                          hintText: "Sort By",
                          textStyle: theme.textTheme.titleSmall!,
                          items: dropdownItemList,
                          filled: true,
                          fillColor: theme.colorScheme.primary,
                          contentPadding: EdgeInsets.only(
                              left: 15, top: 13, bottom: 13),
                          onChanged: (value) {}),
                      CustomElevatedButton(text: "Budget",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapBudget(context);
                          }),
                      CustomElevatedButton(text: "Make",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapMake(context);
                          }),
                      CustomElevatedButton(text: "Fuel Type",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapFueltype(context);
                          }),
                      CustomElevatedButton(text: "Transmission Type",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapTransmission(context);
                          }),
                      CustomElevatedButton(text: "Body Type",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapBodytype(context);
                          }),
                      CustomElevatedButton(text: "Seating Capacity",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapSeating(context);
                          }),
                      CustomElevatedButton(text: "Airbags",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapAirbags(context);
                          }),
                      CustomElevatedButton(text: "Mileage",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapMileage(context);
                          }),
                      CustomElevatedButton(text: "Safety Ratings",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapSafetyratings(context);
                          }),
                      CustomElevatedButton(text: "Engine Capacity",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapEnginecapacity(context);
                          }),
                      Container(margin: EdgeInsets.only(top: 12),
                          padding: EdgeInsets.only(
                              left: 13, top: 12 ,right: 13, bottom: 12),
                          decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Column(mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: (79), width: (329), child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      CustomDropDown(width: (329),
                                          icon: Container(
                                              margin: EdgeInsets.only(left: 30),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowdownBlack900)),
                                          hintText: "Power",
                                          textStyle: theme.textTheme
                                              .titleSmall!,
                                          alignment: Alignment.topCenter,
                                          items: dropdownItemList1,
                                          contentPadding: EdgeInsets.only(
                                              top: 1, bottom: 1),
                                          onChanged: (value) {}),
                                      Align(alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(left: 25,
                                                  top: 31,
                                                  bottom: 28),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSystemuiconscheckboxempty,
                                                    height: (20),
                                                    width: (20)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6, top: 2),
                                                    child: Text("Upto 70 bhp",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign: TextAlign
                                                            .left,
                                                        style: CustomTextStyles
                                                            .bodySmallGray80012)),
                                                Spacer(),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSystemuiconscheckboxempty,
                                                    height: (20),
                                                    width: (20))
                                              ]))),
                                      CustomImageView(svgPath: ImageConstant
                                          .imgSystemuiconscheckboxempty,
                                          height: (20),
                                          width: (20),
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(left: 25)),
                                      CustomImageView(svgPath: ImageConstant
                                          .imgSystemuiconscheckboxempty,
                                          height: (20),
                                          width: (20),
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(right: 111)),
                                      Align(alignment: Alignment.bottomLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 51),
                                              child: Text("100 bhp-140 bhp",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray80012))),
                                      Align(alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 3, bottom: 28),
                                              child: Text("70 bhp-1000 bhp",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray80012))),
                                      Align(alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 3),
                                              child: Text("140 bhp-200 bhp",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmallGray80012))),
                                      CustomElevatedButton(text: "Apply",
                                          buttonStyle: CustomButtonStyles
                                              .fillRedA700.copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                  Size((319), (45)))),
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallPrimary_1,
                                          onTap: () {
                                            onTapApply(context);
                                          },
                                          alignment: Alignment.center)
                                    ])),
                                Padding(padding: EdgeInsets.only(left: 27,
                                    top: 7,
                                    bottom: 2), child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(svgPath: ImageConstant
                                          .imgSystemuiconscheckboxempty,
                                          height: (20),
                                          width: (20)),
                                      Padding(padding: EdgeInsets.only(
                                          left: 6, top: 2),
                                          child: Text("200 bhp-350 bhp",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallGray80012)),
                                      CustomImageView(svgPath: ImageConstant
                                          .imgSystemuiconscheckboxempty,
                                          height: (20),
                                          width: (20),
                                          margin: EdgeInsets.only(left: 41)),
                                      Padding(padding: EdgeInsets.only(
                                          left: 6, top: 2),
                                          child: Text("Above 350 bhp",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallGray80012))
                                    ]))
                              ])),
                      CustomElevatedButton(text: "Torque",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapTorque(context);
                          }),
                      CustomElevatedButton(text: "Colours",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapColours(context);
                          }),
                      CustomElevatedButton(text: "Additional Features",
                          margin: EdgeInsets.only(top: 12),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownBlack900)),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL4
                              .copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (48)))),
                          buttonTextStyle: theme.textTheme.titleSmall!,
                          onTap: () {
                            onTapAdditional(context);
                          })
                    ]))))));
  }


  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft17(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the budgetScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the budgetScreen.
  onTapBudget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetScreen);
  }

  /// Navigates to the makeBrandScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the makeBrandScreen.
  onTapMake(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeBrandScreen);
  }

  /// Navigates to the fuelTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the fuelTypeScreen.
  onTapFueltype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fuelTypeScreen);
  }

  /// Navigates to the transmissionTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the transmissionTypeScreen.
  onTapTransmission(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transmissionTypeScreen);
  }

  /// Navigates to the bodyTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bodyTypeScreen.
  onTapBodytype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bodyTypeScreen);
  }

  /// Navigates to the seatingCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the seatingCapacityScreen.
  onTapSeating(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seatingCapacityScreen);
  }

  /// Navigates to the airbagsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the airbagsScreen.
  onTapAirbags(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.airbagsScreen);
  }

  /// Navigates to the mileageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the mileageScreen.
  onTapMileage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mileageScreen);
  }

  /// Navigates to the safeyRatingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the safeyRatingsScreen.
  onTapSafetyratings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen);
  }

  /// Navigates to the engineCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the engineCapacityScreen.
  onTapEnginecapacity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.engineCapacityScreen);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapApply(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  /// Navigates to the torqueScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the torqueScreen.
  onTapTorque(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.torqueScreen);
  }

  /// Navigates to the coloursScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the coloursScreen.
  onTapColours(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coloursScreen);
  }

  /// Navigates to the additionalFeaturesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the additionalFeaturesScreen.
  onTapAdditional(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.additionalFeaturesScreen);
  }
}
