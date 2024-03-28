import '../a_screen/widgets/a_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/used_cars_page/used_cars_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_bottom_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AScreen extends StatelessWidget {
  AScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                      onTapArrowleft24(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Compare", margin:  EdgeInsets.only(left: 16))),
            body: SizedBox(
              
                child: SingleChildScrollView(
                    padding:  EdgeInsets.only(top: 13),
                    child: Padding(
                        padding:  EdgeInsets.only(left: 16, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                Container(
                                    decoration: AppDecoration.outline12,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle119,
                                              height: (113),
                                              width: (179)),
                                          Padding(
                                              padding:
                                                   EdgeInsets.only(left: 8, top: 8),
                                              child: Text("Aston Martin",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1)),
                                          Padding(
                                              padding:  EdgeInsets.only(
                                                  left: 8, top:4 ,bottom: 8),
                                              child: Text("Rs. 3.79 Cr",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumnrectangle(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.outline12,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle120,
                                                  height: (113),
                                                  width:
                                                      (179)),
                                              Padding(
                                                  padding:  EdgeInsets.only(
                                                      left: 8, top: 8),
                                                  child: Text("BMW",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1)),
                                              Padding(
                                                  padding:  EdgeInsets.only(
                                                      left: 8,
                                                      top: 3,
                                                      bottom: 8),
                                                  child: Text("Rs. 3.79 Cr",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1))
                                            ])))
                              ]),
                              CustomElevatedButton(
                                  text: "Compare Cars",
                                  margin:  EdgeInsets.only(left: 7, top: 27, right: 6),
                                  buttonStyle: CustomButtonStyles.fillRedA700
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(double.maxFinite,
                                                      (45)))),
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallPrimary_1,
                                  onTap: () {
                                    onTapComparecars(context);
                                  }),
                              Padding(
                                  padding:  EdgeInsets.only(left: 8, top: 42),
                                  child: Text("Popular Car Comparisons",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleLarge)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding:  EdgeInsets.only(
                                          left: 23, top: 5, right: 7),
                                      child: ListView.separated(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: (26));
                                          },
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return AItemWidget(
                                                onTapViewcomparison: () {
                                              onTapViewcomparison(context);
                                            });
                                          })))
                            ])))),

        ));
  }

  onTapViewcomparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft24(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the frameFortyfourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameFortyfourScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfourScreen);
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bTabContainerScreen.
  onTapComparecars(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }
}
