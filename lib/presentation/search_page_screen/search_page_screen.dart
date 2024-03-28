import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchPageScreen extends StatelessWidget {
  SearchPageScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(height: (48),
            leadingWidth: 40,
            leading: AppbarImage(height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                onTap: () {
                  onTapArrowleft3(context);
                }),
            title: CustomSearchView(width: (323),
                margin: EdgeInsets.only(left: 8),
                controller: searchController,
                hintText: "What you are looking for ?",
                hintStyle: CustomTextStyles.bodyMediumBlack900,
                textStyle: CustomTextStyles.bodyMediumBlack900,
                suffix: Container(margin: EdgeInsets.only(
                    left: 30, top: 10, right: 15, bottom: 9),
                    child: CustomImageView(svgPath: ImageConstant.imgLocation)),
                suffixConstraints: BoxConstraints(maxHeight: (40)),
                contentPadding: EdgeInsets.only(left: 8, top: 7, bottom: 7))),
        body: Container(width: double.maxFinite,
            padding: EdgeInsets.only(left: 16, top: 11, right: 16, bottom: 11),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("RECENTLY VIEWED", overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelLargeSemiBold),
                  Padding(padding: EdgeInsets.only(top: 8),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgMajesticonsclockline,
                                height: (24),
                                width: (24))),
                        Padding(
                            padding: EdgeInsets.only(left: 8, top: 4 ,bottom: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 21),
                      child: Text(
                          "TRENDING SEARCHES", overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeSemiBold)),
                  Padding(padding: EdgeInsets.only(top: 8),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 6),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 6),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 6),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 6),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ])),
                  Padding(padding: EdgeInsets.only(top: 6, bottom: 5),
                      child: Row(children: [
                        Opacity(opacity: 0.5,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgIconamoontrenduplight,
                                height: (18),
                                width: (18),
                                margin: EdgeInsets.only(bottom: 1))),
                        Padding(padding: EdgeInsets.only(left: 7, top: 1),
                            child: Text(
                                "Loren Epsom", overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallGray80012))
                      ]))
                ]))));
  }


  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
