import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import 'loading_screen.dart';

// ignore_for_file: must_be_immutable
class PriceNavbarScreen extends StatelessWidget {
  PriceNavbarScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              margin:  EdgeInsets.only(left: 16, top: 12, bottom: 12),
              onTap: () {
                onTapLogin(context);
              }),
          title: AppbarSubtitle3(
              text: "On Road Price", margin:  EdgeInsets.only(left: 16))),
      body: SizedBox(
      
        child: SingleChildScrollView(
          padding:  EdgeInsets.only(top: 20),
          child: Padding(
            padding:  EdgeInsets.only(bottom: 5),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  height: (244),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle73,
                        height: (244),
                        width: (390),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin:  EdgeInsets.only(left: 17, right: 16),
                            padding:  EdgeInsets.only(
                                left: 16, top: 18, right: 16, bottom: 18),
                            decoration: AppDecoration.outline3.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomDropDown(
                                      icon: Container(
                                          margin:
                                               EdgeInsets.only(left: 30, right: 15),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVectorGray800)),
                                      hintText:
                                          "Type to select car name, eg. Audi A4",
                                      margin:  EdgeInsets.only(top: 16),
                                      textStyle:
                                          CustomTextStyles.bodyMediumBlack900,
                                      items: dropdownItemList,
                                      contentPadding:  EdgeInsets.only(
                                          left: 16, top: 12 ,bottom: 12),
                                      defaultBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      enabledBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      focusedBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      disabledBorderDecoration:
                                          DropDownStyleHelper
                                              .outlineBluegray100,
                                      onChanged: (value) {}),
                                  CustomElevatedButton(
                                      text: "Check Now",
                                      margin:  EdgeInsets.only(top: 21),
                                      buttonStyle: CustomButtonStyles
                                          .fillRedA700
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                                      double.maxFinite,
                                                      (45)))),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallPrimary_1,
                                      onTap: () {
                                        onTapChecknow(context);
                                      })
                                ])))
                  ])),
              Container(
                margin:  EdgeInsets.only(top: 32),
                padding:  EdgeInsets.only( left: 12, top: 34, right: 12 ,bottom: 34),
                decoration: AppDecoration.fill1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding:  EdgeInsets.only(left: 3),
                          child: Text("EMI Calculator",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding:  EdgeInsets.only(top: 42 ,right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:  EdgeInsets.only(top: 7, bottom: 6),
                                    child: Text("Loan Amount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "₹ 20,000",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size((114),
                                                        (38)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: (24),
                          width: (361),
                          margin:  EdgeInsets.only(left: 1, top: 18)),
                      Padding(
                          padding:  EdgeInsets.only(left: 1, top: 14, right: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("₹ 0",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("₹ 5 Lakhs",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      Padding(
                          padding:  EdgeInsets.only(left: 3, top: 25, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:  EdgeInsets.only(top: 7, bottom: 6),
                                    child: Text("Rate of Interest (p.a)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "60 %",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size((114),
                                                        (38)))),
                                    buttonTextStyle:
                                        CustomTextStyles.bodyMediumGray800)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: (24),
                          width: (361),
                          margin:  EdgeInsets.only(left:4 ,top: 18)),
                      Padding(
                          padding:  EdgeInsets.only(left:4 ,top: 14, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("0 %",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("100 %",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      Padding(
                          padding:  EdgeInsets.only(left:4 ,top: 25, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:  EdgeInsets.only(top: 7, bottom: 6),
                                    child: Text("Loan Tenure",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleMedium)),
                                CustomOutlinedButton(
                                    text: "5 Years",
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray100TL4
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size((114),
                                                        (38)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleSmall!)
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgComponent2,
                          height: (24),
                          width: (361),
                          margin:  EdgeInsets.only(left: 5, top: 18)),
                      Padding(
                          padding:  EdgeInsets.only(left: 5, top: 14, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("0 Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                                Text("10 Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)
                              ])),
                      CustomElevatedButton(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoadingScreen()));
                          },
                          text: "Calculate Now",
                          margin:  EdgeInsets.only(
                              left: 2 ,top: 43, right: 10, bottom: 43),
                          buttonStyle:
                              CustomButtonStyles.fillGreenA700.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size(
                                double.maxFinite,
                                (45),
                              ),
                            ),
                          ),
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary)
                    ]),
              ),
            ]),
          ),
        ),
      ),
    ));
  }

  onTapArrowleft22(BuildContext context) {
    Navigator.pop(context);
  }

  onTapChecknow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapCalculate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calculateScreen);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.btmBar);
  }
}
