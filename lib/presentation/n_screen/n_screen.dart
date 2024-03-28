import '../n_screen/widgets/n_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/used_cars_page/used_cars_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_bottom_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NScreen extends StatelessWidget {
  NScreen({Key? key}) : super(key: key);

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
                    margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                    onTap: () {
                      onTapArrowleft26(context);
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
                                              imagePath: ImageConstant
                                                  .imgRectangle119113x179,
                                              height: (113),
                                              width: (179)),
                                          Padding(
                                              padding:
                                                   EdgeInsets.only(left: 8, top: 8),
                                              child: Text("Alto K10",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1)),
                                          Padding(
                                              padding:  EdgeInsets.only(
                                                  left: 8, top: 3, bottom: 8),
                                              child: Text("Rs 6.5 Lakhs",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumncar(context);
                                    },
                                    child: Container(
                                        padding:  EdgeInsets.only(
                                            left: 57,
                                            top: 37,
                                            right: 57,
                                            bottom: 37),
                                        decoration: AppDecoration.outline12,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                  height: 63,
                                                  width: 64,
                                                  padding:  EdgeInsets.all( 16),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillGray10001,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCarBlack900)),
                                              Padding(
                                                  padding:  EdgeInsets.only(
                                                      top: 3, bottom: 17),
                                                  child: Text("Select Car",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .labelLarge))
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
                                            return NItemWidget(
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

  onTapArrowleft26(BuildContext context) {
    Navigator.pop(context);
  }

  onTapColumncar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfourScreen);
  }

  onTapComparecars(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }
}
