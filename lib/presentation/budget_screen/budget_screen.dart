import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BudgetScreen extends StatelessWidget {
  BudgetScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = [
    "Price High to low",
    "Price Low to high",
    ""
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: appTheme.gray10001,
      appBar: CustomAppBar(
          height: (36),
          leadingWidth: 40,
          leading: AppbarImage(
              height: (24),
              width: (24),
              svgPath: ImageConstant.imgArrowleft,
              margin:  EdgeInsets.only(left: 16),
              onTap: () {
                onTapArrowleft9(context);
              }),
          title: AppbarSubtitle3(
              text: "Sort & filter By", margin:  EdgeInsets.only(left: 16))),
      body: SizedBox(
        
          child: SingleChildScrollView(
            padding:  EdgeInsets.only(top: 12),
            child: Padding(
              padding:  EdgeInsets.only(left: 16, right: 16, bottom: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomDropDown(
                        icon: Container(
                            margin:  EdgeInsets.only(left: 30, right: 16),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        hintText: "Sort By",
                        textStyle: theme.textTheme.titleSmall!,
                        items: dropdownItemList,
                        filled: true,
                        fillColor: theme.colorScheme.primary,
                        contentPadding:
                             EdgeInsets.only(left: 15, top: 13, bottom: 13),
                        onChanged: (value) {}),
                    Container(
                      margin:  EdgeInsets.only(top: 12),
                      padding:  EdgeInsets.only(
                          left: 15, top: 12 ,right: 15, bottom: 12),
                      decoration: AppDecoration.fill1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding:  EdgeInsets.only(right: 1),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:  EdgeInsets.only(top: 2),
                                          child: Text("Budget",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleSmall)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgArrowup,
                                          height: (24),
                                          width: (24))
                                    ])),
                            Padding(
                              padding:  EdgeInsets.only(top: 10, bottom: 4),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:  EdgeInsets.only(right: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:  EdgeInsets.only(top: 1),
                                                  child: Text("Upto 2 Lakh",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              Padding(
                                                  padding:
                                                       EdgeInsets.only(bottom: 1),
                                                  child: Text("1 Cr+",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: theme.textTheme
                                                          .bodySmall))
                                            ])),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgComponent2,
                                        height: (24),
                                        width: (318),
                                        margin:  EdgeInsets.only(left: 5, top: 6)),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding:  EdgeInsets.only(top: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width:
                                                      (83),
                                                  padding:  EdgeInsets.only(
                                                      left: 18,
                                                      top: 8,
                                                      right: 18,
                                                      bottom: 8),
                                                  decoration: AppDecoration
                                                      .outline15
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder3),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("2 Lakh",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall),
                                                      ])),
                                              Padding(
                                                  padding:  EdgeInsets.only(
                                                      left: 24,
                                                      top: 9,
                                                      bottom: 7),
                                                  child: Text("-",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign:
                                                          TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1)),
                                              Container(
                                                width: (83),
                                                margin:  EdgeInsets.only(left: 24),
                                                padding:  EdgeInsets.only(
                                                    left: 26,
                                                    top: 7,
                                                    right: 26,
                                                    bottom: 7),
                                                decoration: AppDecoration
                                                    .outline15
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder3),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:  EdgeInsets.only(
                                                            bottom: 2),
                                                        child: Text("1 Cr.",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                        padding:  EdgeInsets.only(left: 1, top: 23),
                                        child: Text("or select ranges below",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1)),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 6),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 4 Lacks",
                                                      margin:
                                                           EdgeInsets.only(right: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1)),
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 5 Lacks",
                                                      margin:
                                                           EdgeInsets.only(left: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1))
                                            ])),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 8, right: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                            children: [
                                              CustomElevatedButton(
                                                  text: "Cars Under 6 Lacks",
                                                  buttonStyle: CustomButtonStyles
                                                      .fillGray100dd
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  (
                                                                      156),
                                                                  (
                                                                      34)))),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargeBlack900_1),
                                              CustomElevatedButton(
                                                  text: "Cars Under 7 Lacks",
                                                  buttonStyle: CustomButtonStyles
                                                      .fillGray100dd
                                                      .copyWith(
                                                          fixedSize: MaterialStateProperty
                                                              .all<Size>(Size(
                                                                  (
                                                                      155),
                                                                  (
                                                                      34)))),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargeBlack900_1)
                                            ])),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 8 Lacks",
                                                      margin:
                                                           EdgeInsets.only(right: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1)),
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 9 Lacks",
                                                      margin:
                                                           EdgeInsets.only(left: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1))
                                            ])),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 10 Lacks",
                                                      margin:
                                                           EdgeInsets.only(right: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1)),
                                              Expanded(
                                                  child: CustomElevatedButton(
                                                      text:
                                                          "Cars Under 15 Lacks",
                                                      margin:
                                                           EdgeInsets.only(left: 8),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      double
                                                                          .maxFinite,
                                                                      (
                                                                          34)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .labelLargeBlack900_1))
                                            ])),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomElevatedButton(
                                                    text:
                                                        "Cars Under 20 Lacks",
                                                    margin:
                                                         EdgeInsets.only(right: 8),
                                                    buttonStyle: CustomButtonStyles
                                                        .fillGray100dd
                                                        .copyWith(
                                                            fixedSize: MaterialStateProperty
                                                                .all<Size>(Size(
                                                                    double
                                                                        .maxFinite,
                                                                    (
                                                                        34)))),
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .labelLargeBlack900_1)),
                                            Expanded(
                                              child: CustomElevatedButton(
                                                  text: "Cars Under 40 Lacks",
                                                  margin:  EdgeInsets.only(left: 8),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillGray100dd
                                                          .copyWith(
                                                    fixedSize:
                                                        MaterialStateProperty
                                                            .all<Size>(
                                                      Size(
                                                        double.maxFinite,
                                                        (34),
                                                      ),
                                                    ),
                                                  ),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargeBlack900_1),
                                            ),
                                          ]),
                                    ),
                                  ]),
                            ),
                          ]),
                    ),
                    CustomElevatedButton(

                        text: "Make",
                        margin:  EdgeInsets.only(top: 14),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 260),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900),),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapMake(context);
                        }),
                    CustomElevatedButton(
                        text: "Fuel Type",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 235),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapFueltype(context);
                        }),
                    CustomElevatedButton(
                        text: "Transmission Type",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 174),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapTransmission(context);
                        }),
                    Container(
                      height: (108),
                      width: (358),
                      margin:  EdgeInsets.only(top: 12),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomElevatedButton(
                            text: "Body Type",
                            rightIcon: Container(
                                margin:  EdgeInsets.only(left: 230),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownBlack900)),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                                            (358),
                                            (48)))),
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            onTap: () {
                              onTapBodytype(context);
                            },
                            alignment: Alignment.topCenter),
                        CustomElevatedButton(
                            text: "Seating Capacity",
                            rightIcon: Container(
                                margin:  EdgeInsets.only(left: 183),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownBlack900)),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL4
                                .copyWith(
                                    fixedSize:
                                        MaterialStateProperty.all<Size>(Size(
                                            (358),
                                            (48)))),
                            buttonTextStyle: theme.textTheme.titleSmall!,
                            onTap: () {
                              onTapSeating(context);
                            },
                            alignment: Alignment.bottomCenter),
                        // CustomElevatedButton(
                        //     text: "Apply",
                        //     margin:  EdgeInsets.only(top: 16),
                        //     buttonStyle:
                        //         CustomButtonStyles.fillRedA700.copyWith(
                        //       fixedSize: MaterialStateProperty.all<Size>(
                        //         Size(
                        //           (319),
                        //           (45),
                        //         ),
                        //       ),
                        //     ),
                        //     buttonTextStyle:
                        //         CustomTextStyles.titleSmallPrimary_1,
                        //     alignment: Alignment.topCenter),
                      ]),
                    ),
                    CustomElevatedButton(
                        text: "Airbags",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 245),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapAirbags(context);
                        }),
                    CustomElevatedButton(
                        text: "Mileage",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 245),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapMileage(context);
                        }),
                    CustomElevatedButton(
                        text: "Safety Ratings",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 205),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapSafetyratings(context);
                        }),
                    CustomElevatedButton(
                        text: "Engine Capacity",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 192),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapEnginecapacity(context);
                        }),
                    CustomElevatedButton(
                        text: "Power",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 260),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapPower(context);
                        }),
                    CustomElevatedButton(
                        text: "Torque",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 253),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle: CustomButtonStyles.fillPrimaryTL4
                            .copyWith(
                                fixedSize: MaterialStateProperty.all<Size>(
                                    Size(double.maxFinite,
                                        (48)))),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapTorque(context);
                        }),
                    CustomElevatedButton(
                        text: "Colours",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 250),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle:
                            CustomButtonStyles.fillPrimaryTL4.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              double.maxFinite,
                              (48),
                            ),
                          ),
                        ),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapColours(context);
                        }),
                    CustomElevatedButton(
                        text: "Additional Features",
                        margin:  EdgeInsets.only(top: 12),
                        rightIcon: Container(
                            margin:  EdgeInsets.only(left: 175),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        buttonStyle:
                            CustomButtonStyles.fillPrimaryTL4.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              double.maxFinite,
                              (48),
                            ),
                          ),
                        ),
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onTap: () {
                          onTapAdditional(context);
                        })
                  ]),
            ),
          )),
      bottomNavigationBar: Container(
        margin:  EdgeInsets.only(left: 25, right: 25, bottom: 18),
        decoration: AppDecoration.fill,
        child: CustomElevatedButton(
            text: "Apply",
            buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
              fixedSize: MaterialStateProperty.all<Size>(
                Size(
                  double.maxFinite,
                  (45),
                ),
              ),
            ),
            buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
            onTap: () {
              // onTapGetnewoffers(context);
            }),
      ),
    );
  }

  /// Navigates back to the previous screen.

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the makeBrandScreen when the action is triggered.

  onTapMake(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeBrandScreen);
  }

  /// Navigates to the fuelTypeScreen when the action is triggered.

  onTapFueltype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fuelTypeScreen);
  }

  /// Navigates to the transmissionTypeScreen when the action is triggered.

  onTapTransmission(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transmissionTypeScreen);
  }

  /// Navigates to the bodyTypeScreen when the action is triggered.

  onTapBodytype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bodyTypeScreen);
  }

  /// Navigates to the seatingCapacityScreen when the action is triggered.

  onTapSeating(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seatingCapacityScreen);
  }

  /// Navigates to the airbagsScreen when the action is triggered.

  onTapAirbags(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.airbagsScreen);
  }

  /// Navigates to the mileageScreen when the action is triggered.

  onTapMileage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mileageScreen);
  }

  /// Navigates to the safeyRatingsScreen when the action is triggered.

  onTapSafetyratings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen);
  }

  /// Navigates to the engineCapacityScreen when the action is triggered.

  onTapEnginecapacity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.engineCapacityScreen);
  }

  /// Navigates to the powerScreen when the action is triggered.

  onTapPower(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.powerScreen);
  }

  /// Navigates to the torqueScreen when the action is triggered.

  onTapTorque(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.torqueScreen);
  }

  /// Navigates to the coloursScreen when the action is triggered.

  onTapColours(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coloursScreen);
  }

  /// Navigates to the additionalFeaturesScreen when the action is triggered.

  onTapAdditional(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.additionalFeaturesScreen);
  }
}
