import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class PriceBreakupScreen extends StatelessWidget {
  PriceBreakupScreen({Key? key}) : super(key: key);

  TextEditingController group372Controller = TextEditingController();

  TextEditingController pricesevenController = TextEditingController();

  TextEditingController priceeightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: (718),
              width: double.maxFinite,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding:  EdgeInsets.only(left: 7, top: 9),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          SizedBox(
                                              width: (207),
                                              child: Divider(
                                                  height: (6),
                                                  thickness: (6),
                                                  color: appTheme.blueGray100,
                                                  endIndent:
                                                      (40))),
                                          Padding(
                                              padding:  EdgeInsets.only(top: 54),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle19,
                                                        height:
                                                            (86),
                                                        width:
                                                            (
                                                                142)),
                                                    Padding(
                                                        padding:  EdgeInsets.only(
                                                            left: 20,
                                                            top: 6,
                                                            bottom: 32),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "On road price (GST)",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: CustomTextStyles
                                                                      .bodySmall12_2),
                                                              Padding(
                                                                  padding:
                                                                       EdgeInsets.only(
                                                                          top:
                                                                              7),
                                                                  child: Text(
                                                                      "Alto K10",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: CustomTextStyles
                                                                          .titleSmallBlack900_1))
                                                            ]))
                                                  ]))
                                        ])),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage70,
                                        height: (20),
                                        width: (20),
                                        margin:  EdgeInsets.only(
                                            left: 63, top: 11, bottom: 115))
                                  ])),
                          Padding(
                              padding:  EdgeInsets.only(left: 18, top: 96),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding:  EdgeInsets.only(bottom: 2),
                                        child: Text("Ex-Showroom Price",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmall12_2)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage58,
                                        height: (20),
                                        width: (20),
                                        margin:  EdgeInsets.only(left: 13, bottom: 1)),
                                    Spacer(),
                                    Text("₹6.96 Lakh ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlack900_1)
                                  ])),
                          Padding(
                              padding:  EdgeInsets.only(left: 18, top: 12 ,right: 17),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding:  EdgeInsets.only(bottom: 2),
                                        child: Text("Registration",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmall12_2)),
                                    Text("₹52089",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlack900_1)
                                  ])),
                          Container(
                              height: (22),
                              width: (355),
                              margin:  EdgeInsets.only(top: 13),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage58,
                                    height: (20),
                                    width: (20),
                                    alignment: Alignment.topLeft,
                                    margin:  EdgeInsets.only(left: 72)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:  EdgeInsets.only(bottom: 3),
                                              child: Text("Insurance",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2)),
                                          Text("₹52089",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .titleSmallBlack900_1)
                                        ]))
                              ])),
                          Padding(
                              padding:  EdgeInsets.only(left: 18, top: 15, right: 17),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding:  EdgeInsets.only(bottom: 2),
                                        child: Text("Other Charges",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmall12_2)),
                                    Text("₹2089",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlack900_1)
                                  ])),
                          Padding(
                              padding:  EdgeInsets.only(top: 14),
                              child: Divider(
                                  height: (1),
                                  thickness: (1),
                                  color: appTheme.black900,
                                  indent: (16),
                                  endIndent: (18))),
                          Container(
                              height: (22),
                              width: (355),
                              margin:  EdgeInsets.only(top: 11),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                       EdgeInsets.only(bottom: 3),
                                                  child: Text(
                                                      "Total On Road Price in Noida",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmall12_2)),
                                              Text("₹2089",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1)
                                            ])),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage58,
                                        height: (20),
                                        width: (20),
                                        alignment: Alignment.topRight,
                                        margin:  EdgeInsets.only(right: 156))
                                  ])),
                          CustomOutlinedButton(
                              text: "Show more price breakup >",
                              margin:  EdgeInsets.only(left: 17, top: 25, right: 20),
                              buttonStyle: CustomButtonStyles.outlineBlueA700
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              (45)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallBlueA700_1),
                          CustomElevatedButton(
                              text: "Get Price Details on Whatsapp",
                              margin:  EdgeInsets.only(left: 15, top: 27, right: 21),
                              leftIcon: Container(
                                  margin:  EdgeInsets.only(right: 8),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLogoswhatsappicon,
                                      height: (18),
                                      width: (18))),
                              buttonStyle: CustomButtonStyles.outlineBlack900
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              (36)))),
                              buttonTextStyle: CustomTextStyles.bodySmall12_2),
                          Container(
                              height: (203),
                              width: double.maxFinite,
                              margin:  EdgeInsets.only(top: 23),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                 EdgeInsets.only(left: 17, right: 18),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      padding:  EdgeInsets.only(
                                                          left: 16,
                                                          top: 11,
                                                          right: 16,
                                                          bottom: 11),
                                                      decoration: AppDecoration
                                                          .fill2
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder3),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                     EdgeInsets.only(
                                                                        bottom:
                                                                            3),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "EMI  ₹11,000/month",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900_1),
                                                                      Padding(
                                                                          padding:  EdgeInsets.only(
                                                                              top:
                                                                                  8),
                                                                          child: Text(
                                                                              "EMI Calculator",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: CustomTextStyles.bodySmallBlueA700))
                                                                    ])),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage58,
                                                                height:
                                                                    (20),
                                                                width:
                                                                    (20),
                                                                margin:
                                                                     EdgeInsets.only(
                                                                        left: 8,
                                                                        bottom:
                                                                            29)),
                                                            CustomOutlinedButton(
                                                                text:
                                                                    "Get EMI Offers",
                                                                margin:
                                                                     EdgeInsets.only(
                                                                        left:
                                                                            41,
                                                                        top: 7,
                                                                        bottom:
                                                                            11),
                                                                buttonStyle: CustomButtonStyles
                                                                    .outlineGreenA700
                                                                    .copyWith(
                                                                        fixedSize: MaterialStateProperty.all<Size>(Size(
                                                                            (
                                                                                115),
                                                                            (
                                                                                31)))),
                                                                buttonTextStyle:
                                                                    CustomTextStyles
                                                                        .bodySmallGreenA70012)
                                                          ])),
                                                  Container(
                                                      margin:
                                                           EdgeInsets.only(top: 34),
                                                      padding:  EdgeInsets.only(
                                                          top: 14, bottom: 14),
                                                      decoration: AppDecoration
                                                          .fill2
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder3),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMaskgroup50x50,
                                                                height:
                                                                    (50),
                                                                width:
                                                                    (50),
                                                                margin:
                                                                     EdgeInsets.only(
                                                                        top: 3,
                                                                        bottom:
                                                                            13)),
                                                            Padding(
                                                                padding:
                                                                     EdgeInsets.only(
                                                                        bottom:
                                                                            15),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "Need a Car Loan?",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              CustomTextStyles.titleSmallBlack900_1),
                                                                      Padding(
                                                                          padding:  EdgeInsets.only(
                                                                              top:
                                                                                  12),
                                                                          child: Text(
                                                                              "Apply to get Instant Pre-qualified Offers",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: CustomTextStyles.bodySmallBlueA700))
                                                                    ]))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: double.maxFinite,
                                            margin:
                                                 EdgeInsets.only(top: 54, bottom: 69),
                                            padding:
                                                 EdgeInsets.only(top: 17, bottom: 17),
                                            decoration: AppDecoration.fill,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  CustomElevatedButton(
                                                      text: "Get New Offers",
                                                      margin:  EdgeInsets.only(
                                                          bottom: 1),
                                                      buttonStyle: CustomButtonStyles
                                                          .fillRedA700
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      (
                                                                          167),
                                                                      (
                                                                          45)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .bodyMediumPrimary,
                                                      onTap: () {
                                                        onTapGetnewoffers(
                                                            context);
                                                      }),
                                                  CustomOutlinedButton(
                                                      text: "Contact Dealer",
                                                      margin:  EdgeInsets.only(
                                                          bottom: 1),
                                                      buttonStyle: CustomButtonStyles
                                                          .outlineGreenA700TL4
                                                          .copyWith(
                                                              fixedSize: MaterialStateProperty
                                                                  .all<Size>(Size(
                                                                      (
                                                                          164),
                                                                      (
                                                                          45)))),
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleSmallGreenA700_1,
                                                      onTap: () {
                                                        onTapContactdealer(
                                                            context);
                                                      })
                                                ])))
                                  ])),
                          Container(
                              height: (489),
                              width: (354),
                              margin:  EdgeInsets.only(top: 42),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding:  EdgeInsets.only(
                                                left: 18,
                                                top: 2,
                                                right: 18,
                                                bottom: 22),
                                            decoration: AppDecoration.outline5
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                           EdgeInsets.only(left: 1),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgMaskgroup1,
                                                            height: (40),
                                                            width: (40)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                left: 17,
                                                                top: 10,
                                                                bottom: 9),
                                                            child: Text(
                                                                "Exclusive Offers",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .titleSmallBlack900_1))
                                                      ])),
                                                  Padding(
                                                      padding:  EdgeInsets.only(
                                                          left: 1, top: 18),
                                                      child: Text(
                                                          "Benefits of Authorised Buying Experience",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray800)),
                                                  Padding(
                                                      padding:  EdgeInsets.only(
                                                          left: 1, top: 20),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage64,
                                                            height:
                                                                (
                                                                    18),
                                                            width:
                                                                (
                                                                    26),
                                                            margin:  EdgeInsets.only(
                                                                bottom: 2)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                left: 16,
                                                                bottom: 2),
                                                            child: Text(
                                                                "Doorstep Demo",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage65,
                                                            height: (20),
                                                            width: (20),
                                                            margin:  EdgeInsets.only(
                                                                left: 37)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                 left: 12,
                                                                bottom: 2),
                                                            child: Text(
                                                                "Offers & Discounts",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2))
                                                      ])),
                                                  Padding(
                                                      padding:  EdgeInsets.only(
                                                          left:4, top: 18),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage66,
                                                            height: (20),
                                                            width: (20)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                left: 19,
                                                                top: 2,),
                                                            child: Text(
                                                                "Lowest EMI",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage67,
                                                            height: (20),
                                                            width: (20)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                 left: 12,
                                                                bottom: 2),
                                                            child: Text(
                                                                "Exchange Benefits",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmall12_2))
                                                      ])),
                                                  Container(
                                                      height:
                                                          (45),
                                                      width: (
                                                          315),
                                                      margin:  EdgeInsets.only(
                                                          top: 2, bottom: 24),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        (
                                                                            45),
                                                                    width:
                                                                        (
                                                                            314),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular((
                                                                                4)),
                                                                        border: Border.all(
                                                                            color:
                                                                                appTheme.blueA700,
                                                                            width: (1))))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "Get the Best deals",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: CustomTextStyles
                                                                        .titleSmallBlueA700_1))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding:
                                                 EdgeInsets.only(top: 12 ,bottom: 12),
                                            decoration: AppDecoration.outline6,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                           EdgeInsets.only(left: 22),
                                                      child: Text(
                                                          "To avail these offers, benefits please contact, ",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .bodySmallGray80012)),
                                                  Padding(
                                                      padding:  EdgeInsets.only(
                                                          left: 19, top: 12),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPngegg1,
                                                            height:
                                                                (
                                                                    27),
                                                            width:
                                                                (
                                                                    29)),
                                                        Padding(
                                                            padding:  EdgeInsets.only(
                                                                left: 13,
                                                                top: 6),
                                                            child: Text(
                                                                "Maruti Suzuki",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .titleSmallBlack900_1))
                                                      ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:  EdgeInsets.only(
                                                              left: 22,
                                                              top: 19),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgMaskgroup20x20,
                                                                    height:
                                                                        (
                                                                            20),
                                                                    width:
                                                                        (
                                                                            20)),
                                                                Padding(
                                                                    padding:  EdgeInsets.only(
                                                                        left:
                                                                            17,
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "H-5, Sector 63, Noida",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: CustomTextStyles
                                                                            .bodySmallGray80012))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:  EdgeInsets.only(
                                                              left: 22,
                                                              top: 15,
                                                              bottom: 32),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgMaskgroup2,
                                                                    height:
                                                                        (
                                                                            20),
                                                                    width:
                                                                        (
                                                                            20)),
                                                                Padding(
                                                                    padding:  EdgeInsets.only(
                                                                        left:
                                                                            17,
                                                                        top: 1,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "Call Now",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: CustomTextStyles
                                                                            .labelLargeBlueA700_1))
                                                              ])))
                                                ])))
                                  ])),
                          Padding(
                              padding:  EdgeInsets.only(top: 46),
                              child: Text("Alto K10 Price in Cities Near Noida",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleSmallBlack900_1)),
                          Container(
                              height: (101),
                              width: (354),
                              margin:  EdgeInsets.only(top: 393),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomTextFormField(
                                        width: (354),
                                        controller: group372Controller,
                                        contentPadding:  EdgeInsets.only(
                                            left: 18,
                                            top: 15,
                                            right: 18,
                                            bottom: 15),
                                        textStyle: CustomTextStyles
                                            .titleSmallBlack900_1,
                                        hintText: "Alto K10 Waiting Period",
                                        hintStyle: CustomTextStyles
                                            .titleSmallBlack900_1,
                                        textInputAction: TextInputAction.next,
                                        alignment: Alignment.topCenter,
                                        filled: true,
                                        fillColor: appTheme.gray20001,
                                        defaultBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray800,
                                        enabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray800,
                                        focusedBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray800,
                                        disabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineGray800),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: (177),
                                                  padding:  EdgeInsets.only(
                                                      top: 16, bottom: 16),
                                                  decoration:
                                                      AppDecoration.txtOutline1,
                                                  child: Text("EX 1.2 MT",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmallGray80012)),
                                              Container(
                                                  width: (176),
                                                  padding:  EdgeInsets.only(
                                                      top: 16, bottom: 16),
                                                  decoration:
                                                      AppDecoration.txtOutline1,
                                                  child: Text("12-16 Weeks",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodySmallGray80012))
                                            ]))
                                  ])),
                          Container(
                              width: (353),
                              margin:  EdgeInsets.only(left: 19, right: 18),
                              padding:  EdgeInsets.only(top: 16, bottom: 16),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          fs.Svg(ImageConstant.imgGroup37992),
                                      fit: BoxFit.cover)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:
                                             EdgeInsets.only(left: 17, bottom: 1),
                                        child: Text("EX (0) 1.2 MT",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray80012)),
                                    Padding(
                                        padding:
                                             EdgeInsets.only(left: 16, bottom: 1),
                                        child: Text("7-9 Weeks",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray80012))
                                  ])),
                          Padding(
                              padding:  EdgeInsets.only(left: 19),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: (177),
                                        padding:
                                             EdgeInsets.only(top: 16, bottom: 16),
                                        decoration: AppDecoration.txtOutline1,
                                        child: Text("STD",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray80012)),
                                    Container(
                                        width: (176),
                                        padding:
                                             EdgeInsets.only(top: 16, bottom: 16),
                                        decoration: AppDecoration.txtOutline1,
                                        child: Text("10-12 Weeks",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodySmallGray80012))
                                  ])),
                          CustomOutlinedButton(
                              text: "View More ",
                              margin:  EdgeInsets.only(left: 19, top: 25, right: 18),
                              buttonStyle: CustomButtonStyles.outlineBlueA700
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                              double.maxFinite,
                                              (45)))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallBlueA700_1),
                          Padding(
                              padding:  EdgeInsets.only(top: 50),
                              child: Text("Alto K10 Fuel Cost",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.titleSmallBlack900_1)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:  EdgeInsets.only(left: 18, top: 16),
                                  child: Text("VERSION*",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallGray800_1))),
                          CustomTextFormField(
                              controller: pricesevenController,
                              margin:  EdgeInsets.only(left: 19, top: 7, right: 18),
                              contentPadding:
                                   EdgeInsets.only(left: 17, top: 8, bottom: 8),
                              textStyle: CustomTextStyles.titleSmallBlack900_1,
                              hintText: "STD",
                              hintStyle: CustomTextStyles.titleSmallBlack900_1,
                              textInputAction: TextInputAction.next,
                              suffix: Container(
                                  margin:  EdgeInsets.only(
                                      left: 30, top: 17, right: 19, bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrow5)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: (38)),
                              filled: true,
                              fillColor: theme.colorScheme.primary,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:  EdgeInsets.only(left: 18, top: 10),
                                  child: Text("FUEL PRICE PER LITRE",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallGray800_1))),
                          CustomTextFormField(
                              controller: priceeightController,
                              margin:  EdgeInsets.only(left: 19, top: 7, right: 18),
                              contentPadding:
                                   EdgeInsets.only(left: 17, top: 8, bottom: 8),
                              textStyle: CustomTextStyles.titleSmallBlack900_1,
                              hintText: "STD",
                              hintStyle: CustomTextStyles.titleSmallBlack900_1,
                              suffix: Container(
                                  margin:  EdgeInsets.only(
                                      left: 30, top: 17, right: 19, bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrow5)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: (38)),
                              filled: true,
                              fillColor: theme.colorScheme.primary,
                              defaultBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              enabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              focusedBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001,
                              disabledBorderDecoration:
                                  TextFormFieldStyleHelper.outlineGray8001),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:  EdgeInsets.only(left: 18, top: 24),
                                  child: Text("KM DRIVEN PER MONTH",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .bodySmallGray800_1))),
                          CustomImageView(
                              imagePath: ImageConstant.imgComponent2,
                              height: (24),
                              width: (353),
                              margin:  EdgeInsets.only(top: 17)),
                          Padding(
                              padding:  EdgeInsets.only(left: 18, top: 3, right: 18),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("0 KM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.bodySmall),
                                    Text("5000 KM",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: theme.textTheme.bodySmall)
                                  ])),
                          Container(
                              margin:  EdgeInsets.only(left: 19, top: 16, right: 18),
                              padding:  EdgeInsets.only(
                                  left: 17, top: 8, right: 17, bottom: 8),
                              decoration: AppDecoration.outline7,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding:  EdgeInsets.only(top: 1),
                                        child: Text("4567",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1)),
                                    Padding(
                                        padding:  EdgeInsets.only(
                                            left: 7, top: 1, right: 8),
                                        child: Text("KM",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1))
                                  ])),
                          Container(
                              height: (109),
                              width: (369),
                              margin:  EdgeInsets.only(top: 34),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            padding:  EdgeInsets.only(
                                                left: 17,
                                                top: 15,
                                                right: 17,
                                                bottom: 15),
                                            decoration: AppDecoration.fill2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Padding(
                                                padding:  EdgeInsets.only(bottom: 58),
                                                child: Text(
                                                    "Monthly Fuel Cost for Alto K10 is :",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodyMediumGray800)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: (24),
                                            width: (353),
                                            margin:  EdgeInsets.only(bottom: 33),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("₹6,500",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage58,
                                                      height: (20),
                                                      width: (20),
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      margin:
                                                           EdgeInsets.only(left: 70))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage72,
                                        height: (49),
                                        width: (49),
                                        alignment: Alignment.topRight,
                                        margin:  EdgeInsets.only(top: 21, right: 41))
                                  ]))
                        ])),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        width: double.maxFinite,
                        margin:  EdgeInsets.only(top: 176, bottom: 487),
                        padding:
                             EdgeInsets.only(left: 18, top: 5, right: 18, bottom: 5),
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:  EdgeInsets.only(bottom: 2),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("On road price (GST)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12_2),
                                        Padding(
                                            padding:  EdgeInsets.only(top: 1),
                                            child: Text("Std",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1))
                                      ])),
                              CustomImageView(
                                  svgPath: ImageConstant.imgArrow5,
                                  height: (2),
                                  width: (2),
                                  margin:
                                       EdgeInsets.only(left: 28, top: 21, bottom: 20)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 26),
                                  child: SizedBox(
                                      height: (42),
                                      child: VerticalDivider(
                                          width: (1),
                                          thickness: (1),
                                          color: appTheme.black900,
                                          indent: (3),
                                          endIndent: (4)))),
                              Padding(
                                  padding:
                                       EdgeInsets.only(left: 11, top: 1, bottom: 2),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("City",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12_2),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Noida",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlack900_1),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrow5,
                                                  height: (2),
                                                  width: (2),
                                                  margin:  EdgeInsets.only(
                                                      top: 1, bottom: 17))
                                            ])
                                      ]))
                            ]))),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            padding:  EdgeInsets.only(
                                left: 17, top: 6, right: 17, bottom: 6),
                            decoration: AppDecoration.fill,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding:  EdgeInsets.only(bottom: 1),
                                      child: Text("City",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBlack900SemiBold)),
                                  Padding(
                                      padding:  EdgeInsets.only(right: 15, bottom: 1),
                                      child: Text("On-Road Price",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBlack900SemiBold))
                                ])),
                        Padding(
                            padding:  EdgeInsets.only(left: 17, top: 19, right: 23),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("New Delhi",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700SemiBold),
                                  Text("₹6.96 Lakh onwards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1)
                                ])),
                        Padding(
                            padding:  EdgeInsets.only(top: 11),
                            child: Divider(
                                height: (1),
                                thickness: (1),
                                color: appTheme.gray800)),
                        Padding(
                            padding:  EdgeInsets.only(left: 17, top: 14, right: 23),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ghaziabad",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700SemiBold),
                                  Text("₹6.96 Lakh onwards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1)
                                ])),
                        Container(
                            height: (1),
                            width: (388),
                            margin:  EdgeInsets.only(top: 17),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: (388),
                                      child: Divider(
                                          height: (1),
                                          thickness: (1),
                                          color: appTheme.gray800))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: (381),
                                      child: Divider(
                                          height: (1),
                                          thickness: (1),
                                          color: appTheme.gray800)))
                            ])),
                        Padding(
                            padding:  EdgeInsets.only(left: 17, top: 14, right: 23),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Jaipur",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700SemiBold),
                                  Text("₹6.96 Lakh onwards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1)
                                ])),
                        Container(
                            height: (1),
                            width: (388),
                            margin:  EdgeInsets.only(top: 17),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: (388),
                                      child: Divider(
                                          height: (1),
                                          thickness: (1),
                                          color: appTheme.gray800))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: (381),
                                      child: Divider(
                                          height: (1),
                                          thickness: (1),
                                          color: appTheme.gray800)))
                            ])),
                        Padding(
                            padding:  EdgeInsets.only(left: 17, top: 14, right: 23),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Lucknow",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700SemiBold),
                                  Text("₹6.96 Lakh onwards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style:
                                          CustomTextStyles.titleSmallBlack900_1)
                                ])),
                        Padding(
                            padding:  EdgeInsets.only(top: 17),
                            child: Divider(
                                height: (1),
                                thickness: (1),
                                color: appTheme.gray800)),
                        CustomOutlinedButton(
                            text: "View More Cities",
                            margin:  EdgeInsets.only(left: 19, top: 20, right: 18),
                            buttonStyle:
                                CustomButtonStyles.outlineBlueA700.copyWith(
                              fixedSize: MaterialStateProperty.all<Size>(
                                Size(
                                  double.maxFinite,
                                  (45),
                                ),
                              ),
                            ),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallBlueA700_1),
                      ]),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the formPopUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the formPopUpScreen.
  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }

  /// Navigates to the formPopUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the formPopUpScreen.
  onTapContactdealer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }
}
