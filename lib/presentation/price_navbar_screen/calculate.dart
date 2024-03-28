import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/price_navbar_screen/price_navbar_screen.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_drop_down.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class CalculateScreen extends StatelessWidget {
  CalculateScreen({Key? key}) : super(key: key);

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
              margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
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
                          child: Text("Result",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge)),
                      Image.asset("assets/images/30%.JPG"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("EMI Calculator",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                          Text("₹ 20,000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Principle Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                          Text("₹ 20,000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Interest Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                          Text("₹ 20,000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                          Text("₹ 20,000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleLarge),
                        ],
                      ),
                      CustomOutlinedButton(
                          text: "Calculate Again > ",
                          margin:  EdgeInsets.only(left: 1, top: 26),
                          buttonStyle: CustomButtonStyles.outlineGreenA400
                              .copyWith(
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(double.maxFinite,
                                          (45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CustomBottomBar()), // Replace `NextPage` with your actual page
                            );
                          })
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

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.btmBar);
  }
}
