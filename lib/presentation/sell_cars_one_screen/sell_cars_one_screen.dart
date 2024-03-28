import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SellCarsOneScreen extends StatelessWidget {
  const SellCarsOneScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft36(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Sell Cars", margin:  EdgeInsets.only(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 15, top:4, right: 15, bottom: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Select city to sell car online",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleMedium18),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Opacity(
                              opacity: 0.5,
                              child: Padding(
                                  padding:  EdgeInsets.only(left: 76, top: 49),
                                  child: Text("Type your Pincode",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodyMediumBlack900)))),
                      SizedBox(
                          width: (206),
                          child: Divider(
                              height: (4),
                              thickness: (4),
                              color: appTheme.blueGray100)),
                      CustomElevatedButton(
                          text: "NEXT",
                          margin:  EdgeInsets.only(left: 9, top: 23, right: 8),
                          buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                  Size(double.maxFinite, (45)))),
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                          onTap: () {
                            onTapNext(context);
                          }),
                      Container(
                          width: (359),
                          margin:  EdgeInsets.only(top: 28, bottom: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "By clicking Next, you agree to our ",
                                    style: CustomTextStyles.bodySmallLight12),
                                TextSpan(
                                    text: "Terms & Condition, Visitor\n",
                                    style: CustomTextStyles.labelLargeBlueA700),
                                TextSpan(
                                    text: "Agreement",
                                    style: CustomTextStyles
                                        .bodySmallBlueA700Light),
                                TextSpan(
                                    text: " and ",
                                    style: CustomTextStyles.bodySmallLight12),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: CustomTextStyles.labelLargeBlueA700)
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft36(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sellCarsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsScreen);
  }
}
