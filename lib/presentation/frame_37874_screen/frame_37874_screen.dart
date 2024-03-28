import '../frame_37874_screen/widgets/listcurrency4_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame37874Screen extends StatelessWidget {
  Frame37874Screen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController priceoneController = TextEditingController();

  TextEditingController pricetwoController = TextEditingController();

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false,
        body: Container(padding: EdgeInsets.only(top: 7, bottom: 7),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Container(margin: EdgeInsets.only(top: 18),
            padding: EdgeInsets.only(left: 9, right: 9),
            decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: (131),
                      width: (136),
                      child: Stack(alignment: Alignment.center,
                          children: [
                            Align(alignment: Alignment.bottomLeft,
                                child: Text(
                                    "Rs.", overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBlack900)),
                            Align(alignment: Alignment.center,
                                child: SizedBox(height: (131),
                                    width: (136),
                                    child: Stack(alignment: Alignment.center,
                                        children: [
                                          Align(alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24),
                                                  child: Text("4.57 Lakh",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900))),
                                          Align(alignment: Alignment.center,
                                              child: GestureDetector(onTap: () {
                                                onTapColumnmarutialt(context);
                                              },
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMarutialto1667634241,
                                                            height: (83),
                                                            width: (133),
                                                            margin: EdgeInsets
                                                                .only(left: 3)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(top: 7),
                                                            child: Text(
                                                                "Hyundai Santro 2023",
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_1)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: 4 ,right
                                                                    : 1),
                                                                child: Text(
                                                                    "Onwards",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall9)))
                                                      ])))
                                        ])))
                          ])),
                  GestureDetector(onTap: () {
                    onTapTxtComparewithalto(context);
                  },
                      child: Padding(padding: EdgeInsets.only(top: 10),
                          child: Text("Compare with Alto K10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelSmall))),
                  CustomOutlinedButton(text: "View Price Breakup",
                      margin: EdgeInsets.only(left: 1, top: 13, bottom: 14),
                      buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size((135), (22)))),
                      buttonTextStyle: theme.textTheme.labelSmall!,
                      onTap: () {
                        onTapViewprice(context);
                      })
                ])),
        Container(margin: EdgeInsets.only(top: 18),
            padding: EdgeInsets.only(left: 9, right: 9),
            decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: (131),
                      width: (136),
                      child: Stack(alignment: Alignment.center,
                          children: [
                            Align(alignment: Alignment.bottomLeft,
                                child: Text(
                                    "Rs.", overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBlack900)),
                            Align(alignment: Alignment.center,
                                child: SizedBox(height: (131),
                                    width: (136),
                                    child: Stack(alignment: Alignment.center,
                                        children: [
                                          Align(alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24),
                                                  child: Text("4.57 Lakh",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900))),
                                          Align(alignment: Alignment.center,
                                              child: GestureDetector(onTap: () {
                                                onTapColumnmarutialt1(context);
                                              },
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMarutialto1667634241,
                                                            height: (83),
                                                            width: (133),
                                                            margin: EdgeInsets
                                                                .only(left: 3)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(top: 7),
                                                            child: Text(
                                                                "Hyundai Santro 2023",
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_1)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: 4 ,right
                                                                    : 1),
                                                                child: Text(
                                                                    "Onwards",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall9)))
                                                      ])))
                                        ])))
                          ])),
                  GestureDetector(onTap: () {
                    onTapTxtComparewithalto1(context);
                  },
                      child: Padding(padding: EdgeInsets.only(top: 10),
                          child: Text("Compare with Alto K10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelSmall))),
                  CustomTextFormField(width: (135),
                      controller: priceController,
                      margin: EdgeInsets.only(left: 1, top: 13, bottom: 14),
                      contentPadding: EdgeInsets.only(
                          left: 18, top: 3, right: 18, bottom: 3),
                      textStyle: theme.textTheme.labelSmall!,
                      hintText: "View Price Breakup",
                      hintStyle: theme.textTheme.labelSmall!,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700)
                ])),
        Container(margin: EdgeInsets.only(top: 18),
            padding: EdgeInsets.only(left: 9, right: 9),
            decoration: AppDecoration.outline.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Column(mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: (131),
                      width: (136),
                      child: Stack(alignment: Alignment.center,
                          children: [
                            Align(alignment: Alignment.bottomLeft,
                                child: Text(
                                    "Rs.", overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeBlack900)),
                            Align(alignment: Alignment.center,
                                child: SizedBox(height: (131),
                                    width: (136),
                                    child: Stack(alignment: Alignment.center,
                                        children: [
                                          Align(alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24),
                                                  child: Text("4.57 Lakh",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900))),
                                          Align(alignment: Alignment.center,
                                              child: GestureDetector(onTap: () {
                                                onTapColumnmarutialt2(context);
                                              },
                                                  child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .min,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgMarutialto1667634241,
                                                            height: (83),
                                                            width: (133),
                                                            margin: EdgeInsets
                                                                .only(left: 3)),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .only(top: 7),
                                                            child: Text(
                                                                "Hyundai Santro 2023",
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_1)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: 4 ,right
                                                                    : 1),
                                                                child: Text(
                                                                    "Onwards",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall9)))
                                                      ])))
                                        ])))
                          ])),
                  GestureDetector(onTap: () {
                    onTapTxtComparewithalto2(context);
                  },
                      child: Padding(padding: EdgeInsets.only(top: 10),
                          child: Text("Compare with Alto K10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.labelSmall))),
                  CustomTextFormField(width: (135),
                      controller: priceoneController,
                      margin: EdgeInsets.only(left: 1, top: 13, bottom: 14),
                      contentPadding: EdgeInsets.only(
                          left: 18, top: 3, right: 18, bottom: 3),
                      textStyle: theme.textTheme.labelSmall!,
                      hintText: "View Price Breakup",
                      hintStyle: theme.textTheme.labelSmall!,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .outlineBlueA700)
                ])),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 18),
            child: IntrinsicWidth(child: Container(
                padding: EdgeInsets.only(left: 9, right: 9),
                decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3),
                child: Column(mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: (131),
                          width: (136),
                          child: Stack(alignment: Alignment.center,
                              children: [
                                Align(alignment: Alignment.bottomLeft,
                                    child: Text("Rs.", overflow: TextOverflow
                                        .ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900)),
                                Align(alignment: Alignment.center,
                                    child: SizedBox(height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(alignment: Alignment
                                                  .bottomLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 24),
                                                      child: Text("4.57 Lakh",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .center,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900))),
                                              Align(alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapColumnmarutialt3(
                                                            context);
                                                      },
                                                      child: Column(
                                                          mainAxisSize: MainAxisSize
                                                              .min,
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant
                                                                    .imgMarutialto1667634241,
                                                                height: (83),
                                                                width: (133),
                                                                margin: EdgeInsets
                                                                    .only(
                                                                    left: 3)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    top: 7),
                                                                child: Text(
                                                                    "Hyundai Santro 2023",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .bodySmall12_1)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        top: 5,
                                                                        right: 1),
                                                                    child: Text(
                                                                        "Onwards",
                                                                        overflow: TextOverflow
                                                                            .ellipsis,
                                                                        textAlign: TextAlign
                                                                            .center,
                                                                        style: CustomTextStyles
                                                                            .bodySmall9)))
                                                          ])))
                                            ])))
                              ])),
                      GestureDetector(onTap: () {
                        onTapTxtComparewithalto3(context);
                      },
                          child: Padding(padding: EdgeInsets.only(top: 10),
                              child: Text("Compare with Alto K10",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.labelSmall))),
                      CustomTextFormField(width: (135),
                          controller: pricetwoController,
                          margin: EdgeInsets.only(left: 1, top: 13, bottom: 14),
                          contentPadding: EdgeInsets.only(top: 3, bottom: 3),
                          textStyle: theme.textTheme.labelSmall!,
                          hintText: "View Price Breakup",
                          hintStyle: theme.textTheme.labelSmall!,
                          defaultBorderDecoration: TextFormFieldStyleHelper
                              .outlineBlueA700,
                          enabledBorderDecoration: TextFormFieldStyleHelper
                              .outlineBlueA700,
                          focusedBorderDecoration: TextFormFieldStyleHelper
                              .outlineBlueA700,
                          disabledBorderDecoration: TextFormFieldStyleHelper
                              .outlineBlueA700)
                    ])))),
        Expanded(child: SizedBox(height: (225),
            child: ListView.separated(
                padding: EdgeInsets.only(left: 14, top: 18),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: (14));
                },
                itemCount: 4 ,itemBuilder: (context, index)
            {return Listcurrency4ItemWidget(onTapColumnmodel: () {onTapColumnmodel(context);}, onTapTxtComparison: () {onTapTxtComparison(context);}, onTapViewprice: () {onTapViewprice(context);});})))
        ])))
    );
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapColumnmodel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the priceBreakupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the priceBreakupScreen.
  onTapViewprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapColumnmarutialt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapColumnmarutialt1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapColumnmarutialt2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapColumnmarutialt3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }
}
