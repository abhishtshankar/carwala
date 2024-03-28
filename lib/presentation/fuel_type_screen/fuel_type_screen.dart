import '../fuel_type_screen/widgets/fuel_type_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FuelTypeScreen extends StatelessWidget {
  FuelTypeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

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
                onTapArrowleft10(context);
              }),
          title: AppbarSubtitle3(
              text: "Sort & filter By", margin:  EdgeInsets.only(left: 16))),
      body: SizedBox(
      
        child: SingleChildScrollView(
          padding:  EdgeInsets.only(top: 12),
          child: Padding(
            padding:  EdgeInsets.only(left: 16, right: 16, bottom: 5),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                  contentPadding:  EdgeInsets.only(left: 15, top: 13, bottom: 13),
                  onChanged: (value) {}),
              CustomElevatedButton(
                  text: "Budget",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 250),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapBudget(context);
                  }),
              CustomElevatedButton(
                  text: "Make",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                    margin:  EdgeInsets.only(left: 260),
                    child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdownBlack900),
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(
                        double.maxFinite,
                        (48),
                      ),
                    ),
                  ),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapMake(context);
                  }),
              Container(
                  margin:  EdgeInsets.only(top: 12),
                  padding:
                       EdgeInsets.only(left: 13, top: 12 ,right: 13, bottom: 12),
                  decoration: AppDecoration.fill1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomDropDown(
                            icon: Container(
                                margin:  EdgeInsets.only(left: 30),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowdownBlack900)),
                            hintText: "Fuel Type",
                            textStyle: theme.textTheme.titleSmall!,
                            items: dropdownItemList1,
                            contentPadding:  EdgeInsets.only(top: 1, bottom: 1),
                            onChanged: (value) {}),
                        FuelTypeItemWidget(),
                        // Padding(
                        //     padding:  EdgeInsets.only(top: 11, right: 2 bottom: 3),
                        //     child: GridView.builder(
                        //         shrinkWrap: true,
                        //         gridDelegate:
                        //             SliverGridDelegateWithFixedCrossAxisCount(
                        //                 mainAxisExtent: (78),
                        //                 crossAxisCount: 3,
                        //                 mainAxisSpacing:
                        //                     (80),
                        //                 crossAxisSpacing:
                        //                     (80)),
                        //         physics: NeverScrollableScrollPhysics(),
                        //         itemCount: 6,
                        //         itemBuilder: (context, index) {
                        //           return FuelTypeItemWidget();
                        //         }))
                      ])),
              CustomElevatedButton(
                  text: "Transmission Type",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 180),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapTransmission(context);
                  }),
              CustomElevatedButton(
                  text: "Body Type",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 235),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapBodytype(context);
                  }),
              CustomElevatedButton(
                  text: "Seating Capacity",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 185),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapSeating(context);
                  }),
              CustomElevatedButton(
                  text: "Airbags",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 250),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapAirbags(context);
                  }),
              Container(
                height: (108),
                width: (358),
                margin:  EdgeInsets.only(top: 12),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomElevatedButton(
                      text: "Mileage",
                      rightIcon: Container(
                          margin:  EdgeInsets.only(left: 245),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlack900)),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              (358), (48)))),
                      buttonTextStyle: theme.textTheme.titleSmall!,
                      onTap: () {
                        onTapMileage(context);
                      },
                      alignment: Alignment.topCenter),
                  CustomElevatedButton(
                      text: "Safety Ratings",
                      rightIcon: Container(
                          margin:  EdgeInsets.only(left: 200),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlack900)),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                              (358), (48)))),
                      buttonTextStyle: theme.textTheme.titleSmall!,
                      onTap: () {
                        onTapSafetyratings(context);
                      },
                      alignment: Alignment.bottomCenter),

                ]),
              ),
              CustomElevatedButton(
                  text: "Engine Capacity",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 185),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapEnginecapacity(context);
                  }),
              CustomElevatedButton(
                  text: "Power",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 250),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapPower(context);
                  }),
              CustomElevatedButton(
                  text: "Torque",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 245),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapTorque(context);
                  }),
              CustomElevatedButton(
                  text: "Colours",
                  margin:  EdgeInsets.only(top: 12),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 240),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, (48)))),
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  onTap: () {
                    onTapColours(context);
                  }),
              CustomElevatedButton(
                  text: "Additional Features",
                  margin:  EdgeInsets.only(top: 12,bottom: 10),
                  rightIcon: Container(
                      margin:  EdgeInsets.only(left: 165),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowdownBlack900)),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL4.copyWith(
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
        ),
      ),
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

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the budgetScreen when the action is triggered.

  onTapBudget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetScreen);
  }

  /// Navigates to the makeBrandScreen when the action is triggered.

  onTapMake(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeBrandScreen);
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
