import '../santro_screen/widgets/list4_item_widget.dart';
import '../santro_screen/widgets/list_one4_item_widget.dart';
import '../santro_screen/widgets/listcurrency3_item_widget.dart';
import '../santro_screen/widgets/listellipsethir1_item_widget.dart';
import '../santro_screen/widgets/listmodelyear1_item_widget.dart';
import '../santro_screen/widgets/listrectangleei4_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: must_be_immutable
class SantroScreen extends StatelessWidget {
  SantroScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  TextEditingController priceoneController = TextEditingController();

  TextEditingController pricetwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Form(key: _formKey,
            child: SizedBox(width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(height: (328),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter,
                    children: [
                      Align(alignment: Alignment.bottomCenter,
                          child: SizedBox(height: (238),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.center, children: [
                                CustomImageView(imagePath: ImageConstant.
                                imgRectangle19, height: (238), width: (390),
                                    alignment: Alignment.center),
                                Align(alignment: Alignment.center,
                                    child: SizedBox(width: double.maxFinite,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center, children: [
                                          CustomImageView(svgPath: ImageConstant
                                              .imgGroup37926,
                                              height: (45),
                                              width: (390),
                                              margin: EdgeInsets.only(
                                                  top: 100, bottom: 93)),
                                          Spacer(flex: 16),
                                          Spacer(flex: 33),
                                          Spacer(flex: 49),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle20,
                                              height: (238),
                                              width: (1),
                                              margin: EdgeInsets.only(
                                                  left: 16)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle22,
                                              height: (238),
                                              width: (1)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle21,
                                              height: (238),
                                              width: (1)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle24,
                                              height: (238),
                                              width: (1))
                                        ])))
                              ]))),
                      Align(alignment: Alignment.topCenter,
                          child: SizedBox(height: (80),
                              width: double.maxFinite,
                              child: Stack(alignment: Alignment.center,
                                  children: [
                                    CustomAppBar(height: (80),
                                        leadingWidth: 40,
                                        leading: AppbarImage(height: (24),
                                            width: (24),
                                            svgPath: ImageConstant.imgArrowleft,
                                            margin: EdgeInsets.only(
                                                left: 16, top: 2, bottom: 53),
                                            onTap: () {
                                              onTapArrowleft2(context);
                                            }),
                                        actions: [
                                          AppbarImage(height: (24),
                                              width: (24),
                                              svgPath: ImageConstant
                                                  .imgFavorite,
                                              margin: EdgeInsets.only(
                                                  left: 16, top: 2, right: 53)),
                                          AppbarImage(height: (24),
                                              width: (24),
                                              svgPath: ImageConstant
                                                  .imgBasilshareoutline,
                                              margin: EdgeInsets.only(
                                                  left: 12, top: 2, right: 69))
                                        ],
                                        styleType: Style.bgFill_1),
                                    Align(alignment: Alignment.center,
                                        child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            padding: EdgeInsets.only(
                                                left: 14, top: 30, bottom: 27),
                                            child: IntrinsicWidth(child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 1),
                                                      child: Text(
                                                          "Key Specifications",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .titleSmallRedA700)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 27, bottom: 1),
                                                      child: Text(
                                                          "Version",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .titleSmallGray500)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 17, top: 1),
                                                      child: Text(
                                                          "Mileage",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .titleSmallGray500)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 17, bottom: 1),
                                                      child: Text(
                                                          "Colours",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .titleSmallGray500)),
                                                  Spacer(flex: 28),
                                                  Text("Alternatives",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallGray500),
                                                  Spacer(flex: 25),
                                                  Text("Videos",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallGray500),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 17),
                                                      child: Text(
                                                          "Popular Cars",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .titleSmallGray500)),
                                                  Spacer(flex: 45),
                                                  Text("News",
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallGray500)
                                                ]))))
                                  ]))),
                      Align(alignment: Alignment.topRight,
                          child: GestureDetector(onTap: () {
                            onTapRowmaskgroup(context);
                          },
                              child: Container(margin: EdgeInsets.only(
                                  left: 249, top: 69, right: 23, bottom: 231),
                                  padding: EdgeInsets.only(
                                      left: 9, top: 3, right: 9, bottom: 3),
                                  decoration: AppDecoration.outline2.copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder3),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        CustomImageView(imagePath: ImageConstant
                                            .imgMaskgroup,
                                            height: (21),
                                            width: (21),
                                            margin: EdgeInsets.only(top: 1)),
                                        Padding(padding: EdgeInsets.only(
                                            left: 7),
                                            child: Text(
                                                "COMPARE",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlueA700))
                                      ]))))
                    ])),
            Expanded(child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 16),
                child: Padding(padding: EdgeInsets.only(bottom: 5),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMaskgroup40x40,
                                    height: (40),
                                    width: (40)),
                                Padding(padding: EdgeInsets.only(
                                    left: 13, top: 12, bottom: 6),
                                    child: Text("VIEW 360° FULL SCREEN",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlueA700.copyWith(
                                            decoration: TextDecoration
                                                .underline)))
                              ]),
                          Padding(padding: EdgeInsets.only(
                              left: 16, top: 20, right: 22),
                              child: Row(mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Hyundai Santro", overflow: TextOverflow
                                        .ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeBlack900),
                                    Padding(padding: EdgeInsets.only(
                                        top: 4, bottom: 4), child: Text(
                                        "View Images",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlueA700.copyWith(
                                            decoration: TextDecoration
                                                .underline)))
                                  ])),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16, top: 3),
                                  child: Row(children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle239,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular((5))),
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle240,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular((5)),
                                        margin: EdgeInsets.only(left: 9)),
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle241,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular((5)),
                                        margin: EdgeInsets.only(left: 9)),
                                    CustomImageView(imagePath: ImageConstant
                                        .imgRectangle242,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular((5)),
                                        margin: EdgeInsets.only(left: 9))
                                  ]))),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16, top: 4),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end, children: [Text("Rs. 4.57L",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleLargeBlack900), Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, top: 7, bottom: 4),
                                      child: Text("Onwards",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmall12_2)), GestureDetector(
                                      onTap: () {
                                        onTapTxtViewpricebreaku(context);
                                      },
                                      child: Padding(padding: EdgeInsets.only(
                                          left: 23, top: 7, bottom: 1),
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallBlueA700)))
                                  ]))),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16, top: 3),
                                  child: Row(children: [
                                    Text("On road price (GST)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2),
                                    Padding(padding: EdgeInsets.only(left: 6),
                                        child: Text("Noida",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeBlueA700Bold)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMdilocation,
                                        height: (18),
                                        width: (18),
                                        margin: EdgeInsets.only(left: 4))
                                  ]))),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(padding: EdgeInsets.only(left: 16),
                                  child: Row(children: [
                                    CustomImageView(svgPath: ImageConstant
                                        .imgMaterialsymbolsstar,
                                        height: (22),
                                        width: (22)),
                                    CustomImageView(svgPath: ImageConstant
                                        .imgMaterialsymbolsstar,
                                        height: (22),
                                        width: (22),
                                        margin: EdgeInsets.only(left: 4)),
                                    CustomImageView(svgPath: ImageConstant
                                        .imgMaterialsymbolsstar,
                                        height: (22),
                                        width: (22),
                                        margin: EdgeInsets.only(left: 4)),
                                    CustomImageView(svgPath: ImageConstant
                                        .imgMaterialsymbolsstar,
                                        height: (22),
                                        width: (22),
                                        margin: EdgeInsets.only(left: 4)),
                                    CustomImageView(svgPath: ImageConstant
                                        .imgMaterialsymbolsstarhalf,
                                        height: (22),
                                        width: (22),
                                        margin: EdgeInsets.only(left: 4)),
                                    Container(width: (77),
                                        margin: EdgeInsets.only(
                                            left: 13, top: 3, bottom: 2),
                                        padding: EdgeInsets.only(left: 8,
                                            top: 1,
                                            right: 8,
                                            bottom: 1),
                                        decoration: AppDecoration.txtOutline
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder2),
                                        child: Text("86 Reviews",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumGray80001.copyWith(
                                                letterSpacing: (0.2))))
                                  ]))),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16, top: 2),
                                  child: Text("Get EMI assistance",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700))),
                          Container(margin: EdgeInsets.only(
                              left: 16, top: 25, right: 23),
                              padding: EdgeInsets.only(
                                  left: 27, top: 21, right: 27, bottom: 21),
                              decoration: AppDecoration.outline8.copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder10),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(padding: EdgeInsets.only(
                                        left: 5, top: 12), child: Text(
                                        "Fill your Details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelLargeBlack900SemiBold)),
                                    CustomTextFormField(
                                        controller: nameController,
                                        margin: EdgeInsets.only(
                                            left: 5, top: 17, right: 1),
                                        contentPadding: EdgeInsets.only(
                                            left: 12,
                                            top: 9,
                                            right: 12,
                                            bottom: 9),
                                        textStyle: CustomTextStyles
                                            .bodySmallGray80012,
                                        hintText: "Enter your Name",
                                        hintStyle: CustomTextStyles
                                            .bodySmallGray80012 ,textInputAction:
                                        TextInputAction.next, filled: true,
                                        fillColor: appTheme.blueGray100,
                                        defaultBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        enabledBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        focusedBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        disabledBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4),
                                    CustomTextFormField(
                                        controller: mobilenumberController,
                                        margin: EdgeInsets.only(
                                            left: 5, top: 15, right: 1),
                                        contentPadding: EdgeInsets.only(
                                            left: 12, top: 9, right: 12 ,bottom:
                                            9),
                                        textStyle: CustomTextStyles
                                            .bodySmallGray80012 ,hintText: "Enter your Mobile Number",
                                        hintStyle: CustomTextStyles
                                            .bodySmallGray80012, textInputAction:
                                        TextInputAction.next,
                                        textInputType: TextInputType.phone,
                                        filled: true, fillColor: appTheme
                                        .blueGray100,
                                        defaultBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        enabledBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        focusedBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4,
                                        disabledBorderDecoration: TextFormFieldStyleHelper
                                            .outlineGray800TL4),
                                    CustomOutlinedButton(
                                        text: "SUBMIT",
                                        margin: EdgeInsets.only(
                                            left: 6, top: 26),
                                        buttonStyle: CustomButtonStyles
                                            .outlinePrimary.copyWith(
                                            fixedSize: MaterialStateProperty
                                                .all<Size>(
                                                Size(double.maxFinite, (45)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallPrimary)
                                  ])),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(left: 6, top: 30),
                              child: IntrinsicWidth(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Padding(
                                      padding: EdgeInsets.only(top: 1),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            CustomIconButton(height: 60,
                                                width: 60,
                                                padding: EdgeInsets.all(
                                                    13),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBookmark)),
                                            Align(alignment: Alignment
                                                .centerRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          SizedBox(width: (85),
                                                              child: Text(
                                                                  "Key Specifications",
                                                                  maxLines: 2,
                                                                  overflow:
                                                                  TextOverflow.
                                                                  ellipsis,
                                                                  textAlign: TextAlign
                                                                      .center,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge)),
                                                          SizedBox(width: (90),
                                                              child: Text(
                                                                  "Expert \nReviews",
                                                                  maxLines: null,
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign: TextAlign
                                                                      .center,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge))
                                                        ])))
                                          ])), Padding(padding: EdgeInsets.only(
                                      left: 12, top: 1, bottom: 16),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            CustomIconButton(height: 60,
                                                width: 60,
                                                padding: EdgeInsets.all(
                                                13),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCar)),
                                            Padding(padding: EdgeInsets.only(
                                                top: 12),
                                                child: Text("Versions",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelLarge))
                                          ])), Padding(padding: EdgeInsets.only(
                                      left: 23, top: 1, bottom: 14),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            CustomIconButton(height: 60,
                                                width: 60,
                                                padding: EdgeInsets.all(
                                                    13),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup165)),
                                            Padding(padding: EdgeInsets.only(
                                                top: 14),
                                                child: Text("Mileage",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelLarge))
                                          ])), Padding(padding: EdgeInsets.only(
                                      left: 22 ,top: 1, bottom: 16),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            CustomIconButton(height: 60,
                                                width: 60,
                                                padding: EdgeInsets.all(
                                                     16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSettings)),
                                            Padding(padding: EdgeInsets.only(
                                                left: 4 ,top: 12),
                                                child: Text("Colours",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelLarge))
                                          ])), Padding(padding: EdgeInsets.only(
                                      left: 21, top: 1, bottom: 15),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .end,
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          children: [
                                            CustomIconButton(height: 60,
                                                width: 60,
                                                margin: EdgeInsets.only(
                                                    right: 1),
                                                padding: EdgeInsets.all(
                                                12),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup37944)),
                                            Padding(padding: EdgeInsets.only(
                                                top: 13),
                                                child: Text("Our Take",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .labelLarge))
                                          ])), Spacer(), Container(
                                      height: (107),
                                      width: (90),
                                      margin: EdgeInsets.only(top: 1))
                                  ]))),
                          Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 23, top: 35),
                                  child: Text("Key Specifications",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.titleSmall))),
                          Padding(padding: EdgeInsets.only(left: 24, top: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgImage18,
                                              height: (30),
                                              width: (30)),
                                          Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text("Make",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelMediumGray800Bold)),
                                          Padding(padding: EdgeInsets.only(
                                              left: 1, top: 5),
                                              child: Text("Alto",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme.textTheme
                                                      .labelLarge))
                                        ]),
                                    SizedBox(height: (79), child: ListView
                                        .separated(
                                        padding: EdgeInsets.only(left: 52),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(width: (41));
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return Listmodelyear1ItemWidget();
                                        }))
                                  ])),
                          Padding(padding: EdgeInsets.only(left: 21, top: 33),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children:
                                            [CustomImageView(imagePath: ImageConstant.imgImage22 ,height:
                                            (30),
                                        width: (30),
                                        margin: EdgeInsets.only(left: 5)),
                                    Padding(padding: EdgeInsets.only(
                                        left: 2 ,top: 12), child: Text("Torque",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelMediumGray800Bold)),
                                    Padding(padding: EdgeInsets.only(top: 4),
                                        child: Text("200 Nm",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(padding: EdgeInsets.only(left: 40, top: 3),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgImage23,
                                        height: (30),
                                        width: (39),
                                        margin: EdgeInsets.only(left: 8)),
                                    Padding(padding: EdgeInsets.only(top: 12),
                                        child: Text("Top Speed",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumGray800Bold)),
                                    Padding(padding: EdgeInsets.only(
                                        left: 1, top: 4), child: Text(
                                        "227 km/h",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge))
                                  ])),
                          Padding(padding: EdgeInsets.only(left: 42),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgImage27,
                                        height: (30),
                                        width: (30),
                                        margin: EdgeInsets.only(left: 14)),
                                    Padding(padding: EdgeInsets.only(top: 15),
                                        child: Text("Fuel Economy",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumGray800Bold)),
                                    Align(alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 4),
                                            child: Text("22-31 km/l",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme.textTheme
                                                    .labelLarge)))
                                  ])),
                          Padding(padding: EdgeInsets.only(left: 27, top: 3),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgImage25, height: (30), width: (30)),
                                    Padding(padding: EdgeInsets.only(top: 11),
                                        child: Text("Safety Ratings",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelMediumGray800Bold)),
                                    Align(alignment: Alignment.centerRight,
                                        child: Padding(padding: EdgeInsets.only(
                                            top: 4 ,right: 17),
                                            child: Text("4 Star",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme.textTheme
                                                    .labelLarge)))
                                  ]))
                        ])),
                Padding(padding: EdgeInsets.only(top: 36),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage26,
                                    height: (34),
                                    width: (34),
                                    margin: EdgeInsets.only(left: 9)),
                                Padding(padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                        "0-60 km/h", overflow: TextOverflow
                                        .ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelMediumGray800Bold)),
                                Align(alignment: Alignment.center,
                                    child: Padding(padding: EdgeInsets.only(
                                        top: 5), child: Text("5 sec",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge)))
                              ]),
                          Padding(padding: EdgeInsets.only(left: 52),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(imagePath: ImageConstant
                                        .imgImage24,
                                        height: (36),
                                        width: (36),
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 15)),
                                    Padding(padding: EdgeInsets.only(
                                        left: 13, top: 5), child: Text(
                                        "Mileage",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelMediumGray800Bold)),
                                    Padding(padding: EdgeInsets.only(top: 4),
                                        child: Text("45 km/ litre",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelLarge))
                                  ]))
                        ])),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left: 16, top: 38),
                        child: Text(
                            "Version (2)", overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall))),
                Container(width: (389),
                    margin: EdgeInsets.only(left: 1, top: 10),
                    padding: EdgeInsets.only(
                        left: 18, top: 14, right: 18, bottom: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup1263),
                            fit: BoxFit.cover)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup24x24,
                              height: (24),
                              width: (24),
                              margin: EdgeInsets.only(bottom: 1)),
                          Padding(padding: EdgeInsets.only(left: 14, top: 4),
                              child: Text(
                                  "Fuel Type", overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlack900_1)),
                          CustomImageView(svgPath: ImageConstant.imgArrow1,
                              height: (1),
                              width: (1),
                              margin: EdgeInsets.only(
                                  left: 35, top: 15, bottom: 9)),
                          CustomImageView(imagePath: ImageConstant.imgImage31,
                              height: (24),
                              width: (24),
                              margin: EdgeInsets.only(left: 48, bottom: 1)),
                          Padding(padding: EdgeInsets.only(
                              left: 10, top: 2 ,bottom: 1),
                              child: Text("Transmission",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlack900_1)),
                          CustomImageView(svgPath: ImageConstant.imgArrow1,
                              height: (1),
                              width: (1),
                              margin: EdgeInsets.only(
                                  left: 29, top: 15, bottom: 9))
                        ])),
                Padding(padding: EdgeInsets.only(left: 17, top: 15, right: 13),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(text: TextSpan(children: [
                            TextSpan(
                                text: "Alto K10 Std  ", style: CustomTextStyles
                                .labelLargeBlack900SemiBold_1),
                            TextSpan(text: "( CLICK TO VIEW )",
                                style: CustomTextStyles
                                    .labelMediumBlueA700SemiBold)
                          ]), textAlign: TextAlign.left),
                          Text("Rs. 8.04 Lakh", overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .labelLargeBlueA700SemiBold)
                        ])),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left: 17, top: 1),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "Rs. 3.05 Cr",
                              style: CustomTextStyles.labelMediumGray80010),
                          TextSpan(text: " ",
                              style: CustomTextStyles.bodySmallGray800_2),
                          TextSpan(text: "on Road Price (GST), Gaziabad",
                              style: CustomTextStyles.bodySmallGray800Light)
                        ]), textAlign: TextAlign.left))),
                Padding(padding: EdgeInsets.only(left: 17, top: 12 ,right: 13),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(text: TextSpan(children: [
                            TextSpan(
                                text: "Alto K10 LXi  ", style: CustomTextStyles
                                .labelLargeBlack900SemiBold_1),
                            TextSpan(text: "( CLICK TO VIEW )",
                                style: CustomTextStyles
                                    .labelMediumBlueA700SemiBold)
                          ]), textAlign: TextAlign.left),
                          Text("Rs. 8.04 Lakh", overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .labelLargeBlueA700SemiBold)
                        ])),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left: 17, top: 1),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "Rs. 3.05 Cr",
                              style: CustomTextStyles.labelMediumGray80010),
                          TextSpan(text: " ",
                              style: CustomTextStyles.bodySmallGray800_2),
                          TextSpan(text: "on Road Price (GST), Gaziabad",
                              style: CustomTextStyles.bodySmallGray800Light)
                        ]), textAlign: TextAlign.left))),
                Padding(padding: EdgeInsets.only(left: 16, top: 12 ,right: 14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(text: TextSpan(children: [
                            TextSpan(
                                text: "Alto K10 VXi  ", style: CustomTextStyles
                                .labelLargeBlack900SemiBold_1),
                            TextSpan(text: "( CLICK TO VIEW )",
                                style: CustomTextStyles
                                    .labelMediumBlueA700SemiBold)
                          ]), textAlign: TextAlign.left),
                          Text("Rs. 8.04 Lakh", overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles
                                  .labelLargeBlueA700SemiBold)
                        ])),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left: 16, top: 1),
                        child: RichText(text: TextSpan(children: [
                          TextSpan(text: "Rs. 3.05 Cr",
                              style: CustomTextStyles.labelMediumGray80010),
                          TextSpan(text: " ",
                              style: CustomTextStyles.bodySmallGray800_2),
                          TextSpan(text: "on Road Price (GST), Gaziabad",
                              style: CustomTextStyles.bodySmallGray800Light)
                        ]), textAlign: TextAlign.left))),
                Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left: 17, top: 48),
                        child: Text("Mileage", overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall))),
                Container(margin: EdgeInsets.only(left: 17, top: 6, right: 15),
                    padding: EdgeInsets.only(
                        left: 6, top: 11, right: 6, bottom: 11),
                    decoration: AppDecoration.outline3.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [Padding(padding: EdgeInsets.only(left: 6,
                        top: 11, bottom: 10),
                    child: Text("8.8 kmpl", overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlack900_1)),
                Padding(padding: EdgeInsets.only(left: 22),
                    child: SizedBox(height: (43),
                        child: VerticalDivider(width: (1),
                            thickness: (1),
                            color: appTheme.black900,
                            endIndent: (1)))),
                Container(width: (89),
                    margin: EdgeInsets.only(left: 25, bottom: 2),
                    child: Text("CNG Manual\n3982 cc", maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlack900_1)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgImage42, height: (33),
                width: (46),
                margin: EdgeInsets.only(bottom: 10))])),
        Container(margin: EdgeInsets.only(left: 16, right: 16),
            padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
            decoration: AppDecoration.outline3.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(padding: EdgeInsets.only(top: 13, bottom: 13),
                      child: Text("8.8 kmpl", overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)),
                  Padding(padding: EdgeInsets.only(left: 22),
                      child: SizedBox(height: (47),
                          child: VerticalDivider(width: (1),
                              thickness: (1),
                              color: appTheme.black900,
                              indent: (2),
                              endIndent: (3)))),
                  Container(width: (156),
                      margin: EdgeInsets.only(left: 25, bottom: 4),
                      child: Text("Petrol, Automatic (TC)\n3982 cc", maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)),
                  CustomImageView(imagePath: ImageConstant.imgMaskgroup33x33,
                      height: (33),
                      width: (33),
                      margin: EdgeInsets.only(left: 35, top: 5, bottom: 9))
                ])),
        Container(margin: EdgeInsets.only(left: 16, right: 16),
            padding: EdgeInsets.only(left: 5, top: 11, right: 5, bottom: 11),
            decoration: AppDecoration.outline3.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7, top: 11, bottom: 10),
                      child: Text("8.8 kmpl", overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)),
                  Padding(padding: EdgeInsets.only(left: 22),
                      child: SizedBox(height: (43),
                          child: VerticalDivider(width: (1),
                              thickness: (1),
                              color: appTheme.black900,
                              endIndent: (1)))),
                  Container(width: (98),
                      margin: EdgeInsets.only(left: 25, bottom: 2),
                      child: Text("Diesel Manual \n3982 cc", maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)),
                  Spacer(),
                  CustomImageView(imagePath: ImageConstant.imgMaskgroup36x36,
                      height: (36),
                      width: (36),
                      margin: EdgeInsets.only(bottom: 7))
                ])),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 16, top: 69),
                child: Text("Colors (10)", overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall))),
        CustomImageView(imagePath: ImageConstant.imgGroup87,
            height: (40),
            width: (352),
            margin: EdgeInsets.only(top: 24)),
        Container(height: (697),
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 61),
            child: Stack(alignment: Alignment.topCenter,
                children: [
                  Align(alignment: Alignment.center,
                      child: Container(padding: EdgeInsets.only(
                          left: 16, top: 20, right: 16, bottom: 20),
                          decoration: AppDecoration.fill,
                          child: Column(mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 2),
                                    child: Text("Our Take",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleLarge)),
                                Padding(
                                    padding: EdgeInsets.only(left: 2 ,top: 367),
                                    child: Text("Verdict",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeBlueA700)),
                                Container(width: (331),
                                    margin: EdgeInsets.only(
                                        left: 2 ,top: 13, right: 24),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                        maxLines: 2 ,overflow: TextOverflow.
                                        ellipsis, textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2)),
                                Padding(padding: EdgeInsets.only(top: 18),
                                    child: Divider(height: (1),
                                        thickness: (1),
                                        color: appTheme.blueA700,
                                        endIndent: (6))),
                                Padding(
                                    padding: EdgeInsets.only(left: 3, top: 25),
                                    child: Text("Review",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleLargeBlueA700)),
                                Container(width: (331),
                                    margin: EdgeInsets.only(left: 3,
                                        top: 13,
                                        right: 23,
                                        bottom: 20),
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                        maxLines: 2 ,overflow: TextOverflow.
                                        ellipsis, textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2))
                              ]))),
                  Align(alignment: Alignment.topCenter,
                      child: Padding(padding: EdgeInsets.only(top: 74),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(margin: EdgeInsets.only(bottom: 2),
                                    decoration: AppDecoration.outline4.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder10),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: EdgeInsets.only(
                                            left: 19, top: 2),
                                        child: IntrinsicWidth(child: Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Expanded(child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 15, bottom: 46),
                                                  child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Row(children: [
                                                          CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgImage28,
                                                              height: (40),
                                                              width: (40)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: 25,
                                                                  top: 7,
                                                                  bottom: 2),
                                                              child: Text(
                                                                  "Good Things",
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign: TextAlign
                                                                      .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .titleLarge))
                                                        ]),
                                                        Container(width: (256),
                                                            margin: EdgeInsets
                                                                .only(left: 6,
                                                                top: 20),
                                                            child: Text(
                                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                                maxLines: 3,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2)),
                                                        Container(width: (256),
                                                            margin: EdgeInsets
                                                                .only(left: 6,
                                                                top: 9),
                                                            child: Text(
                                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                                maxLines: 3,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2)),
                                                        Container(width: (256),
                                                            margin: EdgeInsets
                                                                .only(left: 6,
                                                                top: 9),
                                                            child: Text(
                                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                                maxLines: 3,
                                                                overflow: TextOverflow
                                                                    .ellipsis,
                                                                textAlign: TextAlign
                                                                    .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2))
                                                      ]))),
                                              Container(height: (307),
                                                  width: (307),
                                                  margin: EdgeInsets.only(
                                                      left: 49),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: (307),
                                                                width: (307),
                                                                decoration: BoxDecoration(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary,
                                                                    borderRadius: BorderRadius
                                                                        .circular(
                                                                        (10)),
                                                                    border: Border
                                                                        .all(
                                                                        color: appTheme
                                                                            .redA400,
                                                                        width: (1))))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage29,
                                                            height: (40),
                                                            width: (40),
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin: EdgeInsets
                                                                .only(left: 19,
                                                                top: 17))
                                                      ]))
                                            ])))),
                                Container(
                                    margin: EdgeInsets.only(left: 24, top: 2),
                                    padding: EdgeInsets.only(
                                        top: 45, bottom: 45),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .end,
                                        mainAxisAlignment: MainAxisAlignment
                                            .end,
                                        children: [Container(width: (22),
                                            margin: EdgeInsets.only(top: 31),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)), Container(
                                            width: (22),
                                            margin: EdgeInsets.only(top: 11),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)), Container(
                                            width: (22),
                                            margin: EdgeInsets.only(top: 11),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2))
                                        ]))
                              ])))
                ])),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 19, top: 29),
                child: Text("Alternatives", overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge))),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 21, top: 12),
                child: RichText(text: TextSpan(children: [
                  TextSpan(text: "Showing similar cars in same ‘",
                      style: CustomTextStyles.bodySmall12),
                  TextSpan(text: "Hatchback’ category",
                      style: CustomTextStyles.labelLargeBlack900SemiBold_1)
                ]), textAlign: TextAlign.left))),
        Align(alignment: Alignment.centerRight,
            child: Padding(padding: EdgeInsets.only(left: 22 ,top: 29),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(padding: EdgeInsets.only(left: 9, right: 9),
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
                                              child: Text("Rs.",
                                                  overflow: TextOverflow
                                                      .ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .labelLargeBlack900)),
                                          Align(alignment: Alignment.center,
                                              child: SizedBox(height: (131),
                                                  width: (136),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    left: 24),
                                                                child: Text(
                                                                    "4.57 Lakh",
                                                                    overflow: TextOverflow
                                                                        .ellipsis,
                                                                    textAlign: TextAlign
                                                                        .left,
                                                                    style: CustomTextStyles
                                                                        .labelLargeBlack900))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
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
                                                                              top: 4,
                                                                              right
                                                                              :
                                                                              1),
                                                                          child: Text(
                                                                              "Onwards",
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style: CustomTextStyles
                                                                                  .bodySmall9)))
                                                                ]))
                                                      ])))
                                        ])),
                                GestureDetector(onTap: () {
                                  onTapTxtComparewithalto(context);
                                },
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme
                                                .labelSmall))),
                                CustomTextFormField(width: (135),
                                    controller: priceoneController,
                                    margin: EdgeInsets.only(
                                        left: 1, top: 13, bottom: 14),
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
                          padding: EdgeInsets.only(left: 14),
                          child: IntrinsicWidth(child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder3),
                              child: Column(mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Padding(padding: EdgeInsets.only(
                                      left: 9), child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: (131),
                                            width: (136),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(alignment: Alignment
                                                      .bottomLeft,
                                                      child: Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900)),
                                                  Align(alignment: Alignment
                                                      .center,
                                                      child: SizedBox(
                                                          height: (131),
                                                          width: (136),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .center,
                                                              children: [
                                                                Align(
                                                                    alignment: Alignment
                                                                        .bottomLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 24),
                                                                        child: Text(
                                                                            "4.57 Lakh",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: CustomTextStyles
                                                                                .labelLargeBlack900))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .center,
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
                                                                                      top: 4,
                                                                                      right
                                                                                      :
                                                                                      1),
                                                                                  child: Text(
                                                                                      "Onwards",
                                                                                      overflow: TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign: TextAlign
                                                                                          .left,
                                                                                      style: CustomTextStyles
                                                                                          .bodySmall9)))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Container(height: (131),
                                            width: (136),
                                            margin: EdgeInsets.only(left: 32,),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(alignment: Alignment
                                                      .bottomLeft,
                                                      child: Text("Rs.",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: CustomTextStyles
                                                              .labelLargeBlack900)),
                                                  Align(alignment: Alignment
                                                      .center,
                                                      child: SizedBox(
                                                          height: (131),
                                                          width: (136),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .center,
                                                              children: [
                                                                Align(
                                                                    alignment: Alignment
                                                                        .bottomLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets
                                                                            .only(
                                                                            left: 24),
                                                                        child: Text(
                                                                            "4.57 Lakh",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            style: CustomTextStyles
                                                                                .labelLargeBlack900))),
                                                                Align(
                                                                    alignment: Alignment
                                                                        .center,
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
                                                                        ]))
                                                              ])))
                                                ]))
                                      ])), Padding(padding: EdgeInsets.only(
                                      left: 9, top: 10), child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(onTap: () {
                                          onTapTxtComparewithalto1(context);
                                        },
                                            child: Text("Compare with Alto K10",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: theme.textTheme
                                                    .labelSmall)),
                                        GestureDetector(onTap: () {
                                          onTapTxtComparewithalto2(context);
                                        },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 54),
                                                child: Text(
                                                    "Compare with Alto K10",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .labelSmall)))
                                      ])), Padding(padding: EdgeInsets.only(
                                      left: 10, top: 13, bottom: 14),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .end,
                                          children: [
                                            CustomTextFormField(width: (135),
                                                controller: pricetwoController,
                                                contentPadding: EdgeInsets.only(
                                                    left: 18,
                                                    top: 3,
                                                    right: 18,
                                                    bottom: 3),
                                                textStyle: theme.textTheme
                                                    .labelSmall!,
                                                hintText: "View Price Breakup",
                                                hintStyle: theme.textTheme
                                                    .labelSmall!,
                                                defaultBorderDecoration: TextFormFieldStyleHelper
                                                    .outlineBlueA700,
                                                enabledBorderDecoration: TextFormFieldStyleHelper
                                                    .outlineBlueA700,
                                                focusedBorderDecoration: TextFormFieldStyleHelper
                                                    .outlineBlueA700,
                                                disabledBorderDecoration: TextFormFieldStyleHelper
                                                    .outlineBlueA700),
                                            CustomOutlinedButton(
                                                text: "View Price Breakup",
                                                margin: EdgeInsets.only(
                                                    left: 34),
                                                buttonStyle: CustomButtonStyles
                                                    .outlineBlueA700.copyWith(
                                                    fixedSize: MaterialStateProperty
                                                        .all<Size>(
                                                        Size((135), (22)))),
                                                buttonTextStyle: theme.textTheme
                                                    .labelSmall!,
                                                onTap: () {
                                                  onTapViewprice(context);
                                                })
                                          ]))
                                  ])))),
                      Container(height: (207),
                          width: (30),
                          margin: EdgeInsets.only(left: 14),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular((3)),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.black900.withOpacity(0.25),
                                    spreadRadius: (2),
                                    blurRadius: (2),
                                    offset: Offset(0, 0))
                              ]))
                    ]))),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 18, top: 27),
                child: Text("Images", overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge))),
        Container(height: (208),
            width: (372),
            margin: EdgeInsets.only(top: 5),
            child: Stack(alignment: Alignment.bottomRight,
                children: [
                  Align(alignment: Alignment.topCenter,
                      child: Padding(padding: EdgeInsets.only(bottom: 39),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgDownload11,
                                    height: (168),
                                    width: (224)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgDownload21,
                                    height: (168),
                                    width: (130))
                              ]))),
                  Align(alignment: Alignment.bottomRight,
                      child: Padding(padding: EdgeInsets.only(right: 18),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle259,
                                    height: (54),
                                    width: (54)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle260,
                                    height: (54),
                                    width: (54),
                                    margin: EdgeInsets.only(left: 9)),
                                Container(height: (54),
                                    width: (54),
                                    margin: EdgeInsets.only(left: 9),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle261,
                                            height: (54),
                                            width: (54),
                                            alignment: Alignment.center), Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 9),
                                                child: Text("60+",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary)))
                                        ]))
                              ])))
                ])),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 18, top: 55),
                child: Text("Alto K10 Videos", overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge))),
        Align(alignment: Alignment.centerRight,
            child: Padding(padding: EdgeInsets.only(left: 18, top: 13),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: IntrinsicWidth(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: (149),
                                          width: (265),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle219,
                                                    height: (149),
                                                    width: (265),
                                                    radius: BorderRadius.only(
                                                        topLeft: Radius
                                                            .circular((4)),
                                                        topRight: Radius
                                                            .circular((4))),
                                                    alignment: Alignment
                                                        .center),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIconparksolidplay,
                                                    height: (24),
                                                    width: (24),
                                                    alignment: Alignment.center)
                                              ])),
                                      Container(height: (149),
                                          width: (265),
                                          margin: EdgeInsets.only(left: 15),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle220,
                                                    height: (149),
                                                    width: (265),
                                                    alignment: Alignment
                                                        .center),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIconparksolidplay,
                                                    height: (24),
                                                    width: (24),
                                                    alignment: Alignment.center)
                                              ]))
                                    ]))),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: IntrinsicWidth(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(child: Container(
                                          padding: EdgeInsets.only(
                                              left: 12, top: 13, right: 12,bottom
                                              : 13),
                                          decoration: AppDecoration.outline1
                                              .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL4),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Text("Alto K10 - Newly Lauched",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .titleMedium),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2 ,top: 11,
                                                        bottom: 7),
                                                    child: Row(children: [
                                                      Container(height: (16),
                                                          width: (22),
                                                          margin: EdgeInsets
                                                              .only(top: 3,
                                                              bottom: 3),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgContrast,
                                                                    height: (16),
                                                                    width: (22),
                                                                    alignment: Alignment
                                                                        .center),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgRefresh,
                                                                    height: (9),
                                                                    width: (9),
                                                                    alignment: Alignment
                                                                        .center)
                                                              ])),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(left: 8),
                                                          child: Text("140",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumGray800_1)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgUiwlikeo,
                                                          height: (24),
                                                          width: (24)),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(left: 8),
                                                          child: Text("23",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumGray800_1))
                                                    ]))
                                              ]))),
                                      Expanded(child: Container(
                                          margin: EdgeInsets.only(left: 15),
                                          padding: EdgeInsets.only(
                                              left: 12, top: 10, right: 12,bottom
                                              : 10),
                                          decoration: AppDecoration.outline1
                                              .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL4),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Text("Alto K10 - Test Drive",
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme.textTheme
                                                        .titleMedium),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2 ,top: 14,
                                                        bottom: 10),
                                                    child: Row(children: [
                                                      Container(height: (16),
                                                          width: (22),
                                                          margin: EdgeInsets
                                                              .only(top: 3,
                                                              bottom: 3),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgContrast,
                                                                    height: (16),
                                                                    width: (22),
                                                                    alignment: Alignment
                                                                        .center),
                                                                CustomImageView(
                                                                    svgPath: ImageConstant
                                                                        .imgRefresh,
                                                                    height: (9),
                                                                    width: (9),
                                                                    alignment: Alignment
                                                                        .center)
                                                              ])),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(left: 8),
                                                          child: Text("140",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumGray800_1)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgUiwlikeo,
                                                          height: (24),
                                                          width: (24)),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .only(left: 8),
                                                          child: Text("23",
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: CustomTextStyles
                                                                  .titleMediumGray800_1))
                                                    ]))
                                              ])))
                                    ])))
                          ])),
                      Container(height: (243),
                          width: (94),
                          margin: EdgeInsets.only(left: 15))
                    ]))),
        Container(width: double.maxFinite,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.only(left: 47, right: 47),
            decoration: AppDecoration.fill,
            child: CustomImageView(imagePath: ImageConstant.imgImage41,
                height: (108),
                width: (287))),
        Align(alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: 16, top: 51),
                child: RichText(text: TextSpan(children: [
                  TextSpan(text: "Top", style: theme.textTheme.titleLarge),
                  TextSpan(text: " Popular cars in india",
                      style: CustomTextStyles.titleLargeBold)
                ]), textAlign: TextAlign.left))),
        Align(alignment: Alignment.centerRight,
            child: SizedBox(height: (181),
                child: ListView.separated(
                    padding: EdgeInsets.only(left: 18, top: 6),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: (14));
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Listrectangleei4ItemWidget();
                    }))),
        Padding(padding: EdgeInsets.only(top: 45),
            child: Text("Popular Compact hatchback Cars",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.titleLarge)),
        Padding(padding: EdgeInsets.only(left: 9, top: 27),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox
                (height: (207),
            child: ListView.separated(scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: (14));
                },
                itemCount: 2 ,itemBuilder: (context, index)
            {return Listcurrency3ItemWidget(onTapTxtComparewithalto: () {onTapTxtComparewithalto(context);}, onTapViewprice: () {onTapViewprice(context);});})),
        Container(height: (207),
            width: (43),
            margin: EdgeInsets.only(left: 14),
            decoration: BoxDecoration(color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular((3)),
                boxShadow: [
                  BoxShadow(color: appTheme.black900.withOpacity(0.25),
                      spreadRadius: (2),
                      blurRadius: (2),
                      offset: Offset(0, 0))
                ]))
        ])), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20, top: 56), child: Text("Alto k10 price in cities near noida", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleLarge))), Container(width: double.maxFinite, margin: EdgeInsets.only(top: 19), padding: EdgeInsets.only(left: 19, top: 5, right: 19, bottom: 5), decoration: AppDecoration.fill, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1), child: Text("City", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900SemiBold)), Padding(padding: EdgeInsets.only(right: 56, bottom: 2), child: Text("On-Road Price", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.labelLargeBlack900SemiBold))])), Padding(padding: EdgeInsets.only(left: 19, top: 18, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("New Delhi", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlueA700SemiBold), Text("₹6.96 Lakh onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1)])), Padding(padding: EdgeInsets.only(top: 11), child: Divider(height: (1), thickness: (1), color: appTheme.gray800)), Padding(padding: EdgeInsets.only(left: 19, top: 13, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Ghaziabad", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlueA700SemiBold), Text("₹6.96 Lakh onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1)])), Container(height: (1), width: double.maxFinite, margin: EdgeInsets.only(top: 17), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Divider(height: (1), thickness: (1), color: appTheme.gray800))), Align(alignment: Alignment.center, child: SizedBox(width: (383), child: Divider(height: (1), thickness: (1), color: appTheme.gray800)))])), Padding(padding: EdgeInsets.only(left: 19, top: 13, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1), child: Text("Jaipur", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlueA700SemiBold)), Padding(padding: EdgeInsets.only(bottom: 1), child: Text("₹6.96 Lakh onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1))])), Container(height: (1), width: double.maxFinite, margin: EdgeInsets.only(top: 16), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Divider(height: (1), thickness: (1), color: appTheme.gray800))), Align(alignment: Alignment.center, child: SizedBox(width: (383), child: Divider(height: (1), thickness: (1), color: appTheme.gray800)))])), Padding(padding: EdgeInsets.only(left: 19, top: 13, right: 21), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Lucknow", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlueA700SemiBold), Text("₹6.96 Lakh onwards", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1)])), Padding(padding: EdgeInsets.only(top: 17), child: Divider(height: (1), thickness: (1), color: appTheme.gray800)), CustomOutlinedButton(text: "View More Cities", margin: EdgeInsets.only(left: 16, top: 20, right: 21), buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, (45)))), buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1), Container(height: (246), width: (317), margin: EdgeInsets.only(top: 83), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle250, height: (71), width: (311)), Padding(padding: EdgeInsets.only(top: 32), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgDocument, height: (51), width: (51), margin: EdgeInsets.only(top: 2 ,bottom: 76)), Padding(padding: EdgeInsets.only(left: 11), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Maruti Suzuki Alto K10 Brochure", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleMedium), Container(width: (235), margin: EdgeInsets.only(top: 2), child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the", maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumGray70001)), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(top: 21), child: Text("Download Brochure", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallRed600_1)))]))]))])), CustomImageView(imagePath: ImageConstant.imgDownload, height: (42), width: (42), alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 72))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 22 ,top: 83), child: Text("Expert Reviews", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleLarge))), Padding(padding: EdgeInsets.only(left: 22 ,top: 29), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(decoration: AppDecoration.outline3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 14), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(top: 13, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse35, height: (40), width: (40), radius: BorderRadius.circular((20))), Padding(padding: EdgeInsets.only(left: 14, top: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Loren Espom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1), Padding(padding: EdgeInsets.only(top: 3), child: Text("Jun 3rd 2023, 11:30 PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))]))]), Container(width: (244), margin: EdgeInsets.only(top: 8), child: Text("Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ", maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_2))]))), Container(height: (160), width: (281), margin: EdgeInsets.only(left: 35), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Container(height: (160), width: (281), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular((8)), boxShadow: [BoxShadow(color: appTheme.black900.withOpacity(0.25), spreadRadius: (2), blurRadius: (2), offset: Offset(0, 0))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 68, top: 13), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Loren Espom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBlack900_1), Padding(padding: EdgeInsets.only(top: 4), child: Text("Jun 3rd 2023, 11:30 PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodySmall))])))]))])))), Container(margin: EdgeInsets.only(left: 13), padding: EdgeInsets.only(top: 6, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse35, height: (40), width: (40), radius: BorderRadius.circular((20)), margin: EdgeInsets.only(top: 6, right: 10)), Container(width: (50), margin: EdgeInsets.only(top: 9), child: Text("Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ", maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_2))]))])), Padding(padding: EdgeInsets.only(left: 22 ,top: 48), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(decoration: AppDecoration.outline3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 14), child: IntrinsicWidth(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(top: 13, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgEllipse35, height: (40), width: (40), radius: BorderRadius.circular((20))), Padding(padding: EdgeInsets.only(left: 14, top: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Loren Espom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1), Padding(padding: EdgeInsets.only(top: 3), child: Text("Jun 3rd 2023, 11:30 PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodySmall))]))]), Container(width: (244), margin: EdgeInsets.only(top: 8), child: Text("Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ", maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_2))]))), Container(height: (160), width: (281), margin: EdgeInsets.only(left: 35), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Container(height: (160), width: (281), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular((8)), boxShadow: [BoxShadow(color: appTheme.black900.withOpacity(0.25), spreadRadius: (2), blurRadius: (2), offset: Offset(0, 0))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 68, top: 13), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("Loren Espom", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleSmallBlack900_1), Padding(padding: EdgeInsets.only(top: 4), child: Text("Jun 3rd 2023, 11:30 PM", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodySmall))])))]))])))), Container(margin: EdgeInsets.only(left: 13), padding: EdgeInsets.only(top: 6, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgEllipse35, height: (40), width: (40), radius: BorderRadius.circular((20)), margin: EdgeInsets.only(top: 6, right: 10)), Container(width: (50), margin: EdgeInsets.only(top: 9), child: Text("Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ", maxLines: 5, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmall12_2))]))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 18, top: 66), child: Text("Alto K10 News & Updates", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleLarge))), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 21, top: 27), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: (255), decoration: AppDecoration.outline3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Padding(padding: EdgeInsets.only(bottom: 21), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: (124));}, itemCount: 2 ,itemBuilder: (context, index) {return Listellipsethir1ItemWidget();}), Container(width: (190), margin: EdgeInsets.only(left:4 ,top: 8), child: Text("Hyundai i10 dolor sit amet, consectetur adipiscing elit.", maxLines: 2 ,overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1)), Padding(padding: EdgeInsets.only(left:4 ,top: 6), child: Row(children: [SizedBox(width: (104), child: Text("13 hours ago by loren epsom", maxLines: 2 ,overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallLight_2)), Container(width: (27), margin: EdgeInsets.only(bottom: 2), child: Text("1555 views", maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallLight_2))])), Container(width: (239), margin: EdgeInsets.only(left:4 ,top: 15), child: ReadMoreText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin accumsan neque est, vitae rutrum ex euismod et. Nu..........................", trimLines: 3, colorClickableText: appTheme.blueA700, trimMode: TrimMode.Line, trimCollapsedText: "READ MORE ", moreStyle: CustomTextStyles.bodySmallLight_2 ,lessStyle: CustomTextStyles.bodySmallLight_2))]))), SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 1), child: IntrinsicWidth(child: SizedBox(height: (339), width: (255), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(height: (339), width: (255), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular((8)), boxShadow: [BoxShadow(color: appTheme.black900.withOpacity(0.25), spreadRadius: (2), blurRadius: (2), offset: Offset(0, 0))]))), Align(alignment: Alignment.topCenter, child: SizedBox(height: (165), width: (255), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle75165x255, height: (165), width: (255), radius: BorderRadius.only(topLeft: Radius.circular((8)), topRight: Radius.circular((8))), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgRiheartline, height: (24), width: (24), alignment: Alignment.topRight, margin: EdgeInsets.only(top: 16, right: 11))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(left:4 ,right:4 ,bottom: 21), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(width: (111), child: Text("13 hours ago by loren epsom", maxLines: 2 ,overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallLight_2)), Container(width: (37), margin: EdgeInsets.only(left: 96, bottom: 1), child: Text("1555 views", maxLines: null, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodySmallLight_2))]), Container(width: (240), margin: EdgeInsets.only(top: 15), child: ReadMoreText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin accumsan neque est, vitae rutrum ex euismod et. Nu..........................", trimLines: 3, colorClickableText: appTheme.blueA700, trimMode: TrimMode.Line, trimCollapsedText: "READ MORE ", moreStyle: CustomTextStyles.bodySmallLight_2 ,lessStyle: CustomTextStyles.bodySmallLight_2))])))]))))])), Container(width: (81), margin: EdgeInsets.only( left: 32, top: 173, bottom: 123), child: Text("Maruti Suzuki dolor sit amet, consectetur adipiscing elit.", maxLines: 2 ,overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmallBlack900_1))]))), Padding(padding: EdgeInsets.only(top: 7), child: Text(" Just Launched cars in india", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleLarge)), Align(alignment: Alignment.centerRight, child: SizedBox(height: (187), child: ListView.separated(padding: EdgeInsets.only(left: 19, top: 12), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: (14));}, itemCount: 5, itemBuilder: (context, index) {return List4ItemWidget();}))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 19, top: 34), child: Text(" Upcoming launches", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleLarge))), Align(alignment: Alignment.centerRight, child: SizedBox(height: (196), child: ListView.separated(padding: EdgeInsets.only(left: 22 ,top: 21), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: (14));}, itemCount: 5, itemBuilder: (context, index) {return ListOne4ItemWidget();}))), CustomOutlinedButton(text: "View upcoming all Luanches", margin: EdgeInsets.only(left: 22 ,top: 18, right: 9), buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, (45)))), buttonTextStyle: CustomTextStyles.titleSmallGreenA400, onTap: () {onTapViewupcoming(context);})]))))]))), bottomNavigationBar: Container(margin: EdgeInsets.only(left: 18, right: 18, bottom: 18), decoration: AppDecoration.fill, child: CustomElevatedButton(text: "Get New Offers", buttonStyle: CustomButtonStyles.fillRedA700.copyWith(fixedSize: MaterialStateProperty.all<Size>(Size(double.maxFinite, (45)))), buttonTextStyle: CustomTextStyles.bodyMediumPrimary, onTap: () {onTapGetnewoffers(context);})
    )
    )
    );
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
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

  /// Navigates to the formPopUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the formPopUpScreen.
  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }


  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapRowmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the priceBreakupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the priceBreakupScreen.
  onTapTxtViewpricebreaku(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapTxtComparewithalto2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }
}
