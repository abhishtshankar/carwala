import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14EightScreen extends StatelessWidget {
  const Iphone14EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(top: 12 ,bottom: 12),
                child: CustomAppBar(
                    height: (133),
                    title: Padding(
                        padding:  EdgeInsets.only(left: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                AppbarImage(
                                    height: (24),
                                    width: (24),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () {
                                      onTapArrowleft44(context);
                                    }),
                                AppbarSubtitle3(
                                    text: "FInd New Cars",
                                    margin:
                                         EdgeInsets.only(left: 16, top: 1, bottom: 1))
                              ]),
                              AppbarImage(
                                  height: (92),
                                  width: (139),
                                  imagePath: ImageConstant.imgToyotaglanza0,
                                  margin:  EdgeInsets.only(top: 12 ,right: 2))
                            ])),
                    actions: [
                      Padding(
                          padding:  EdgeInsets.only(
                              left: 21, top: 50, right: 21, bottom: 31),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Opacity(
                                                opacity: 0.7,
                                                child: Padding(
                                                    padding:
                                                         EdgeInsets.only(right: 15),
                                                    child: Text("Tata",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleSmallGray800)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Altroz",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleMediumGray800_1))
                                      ]),
                                  AppbarImage(
                                      height: (16),
                                      width: (16),
                                      svgPath: ImageConstant.imgIctwotonecheck,
                                      margin:  EdgeInsets.only(
                                          left: 104, top: 15, bottom: 14))
                                ])
                              ]))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft44(BuildContext context) {
    Navigator.pop(context);
  }
}
