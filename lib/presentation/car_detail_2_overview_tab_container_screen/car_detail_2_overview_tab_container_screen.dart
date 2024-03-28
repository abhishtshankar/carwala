import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/car_detail_2_overview_page/car_detail_2_overview_page.dart';
import 'package:carwalee/presentation/car_detail_3_features_page/car_detail_3_features_page.dart';
import 'package:carwalee/presentation/car_detail_4_specifications_page/car_detail_4_specifications_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CarDetail2OverviewTabContainerScreen extends StatefulWidget {
  const CarDetail2OverviewTabContainerScreen({Key? key}) : super(key: key);

  @override
  CarDetail2OverviewTabContainerScreenState createState() =>
      CarDetail2OverviewTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class CarDetail2OverviewTabContainerScreenState
    extends State<CarDetail2OverviewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
            height: (71),
            title: Row(children: [
              Padding(
                  padding:  EdgeInsets.only(top: 36, bottom: 14),
                  child: Text("Colours",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallRedA700)),
              AppbarSubtitle5(
                  text: "Full Details",
                  margin:  EdgeInsets.only(left: 34, top: 36, bottom: 14)),
              Container(
                  margin:  EdgeInsets.only(left: 272),
                  padding:  EdgeInsets.only(left: 9, top:4 ,right: 9, bottom: 4),
                  decoration: BoxDecoration(color: theme.colorScheme.primary),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding:  EdgeInsets.only(left: 7),
                            child: Row(children: [
                              AppbarImage(
                                  height: (24),
                                  width: (24),
                                  svgPath: ImageConstant.imgArrowleft,
                                  onTap: () {
                                    onTapArrowleft(context);
                                  }),
                              AppbarImage(
                                  height: (24),
                                  width: (24),
                                  svgPath: ImageConstant.imgFavorite,
                                  margin:  EdgeInsets.only(left: 274)),
                              AppbarImage(
                                  height: (24),
                                  width: (24),
                                  svgPath: ImageConstant.imgBasilshareoutline,
                                  margin:  EdgeInsets.only( left: 12,))
                            ])),
                        Padding(
                            padding:  EdgeInsets.only(
                                left: 27, top: 9, right: 173, bottom: 8),
                            child: Row(children: [
                              AppbarSubtitle5(text: "Popular Car"),
                              AppbarSubtitle5(
                                  text: "Images", margin:  EdgeInsets.only(left: 26))
                            ]))
                      ]))
            ]),
            actions: [
              AppbarSubtitle5(
                  text: "Upcoming Launches",
                  margin:  EdgeInsets.only(left: 2 ,top: 36, right: 2 ,bottom: 13))
            ],
            styleType: Style.bgFill),
        body: SizedBox(
        
          child: SingleChildScrollView(
            padding:  EdgeInsets.only(top: 1),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: (253),
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                height: (238),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle19,
                                          height: (238),
                                          width: (390),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: double.maxFinite,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup37926,
                                                        height:
                                                            (45),
                                                        width:
                                                            (
                                                                390),
                                                        margin:  EdgeInsets.only(
                                                            top: 100,
                                                            bottom: 93)),
                                                    Spacer(flex: 16),
                                                    Spacer(flex: 33),
                                                    Spacer(flex: 49),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle20,
                                                        height: (
                                                            238),
                                                        width:
                                                            (
                                                                1),
                                                        margin:  EdgeInsets.only(
                                                            left: 16)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle22,
                                                        height: (
                                                            238),
                                                        width:
                                                            (
                                                                1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle21,
                                                        height: (
                                                            238),
                                                        width:
                                                            (
                                                                1)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle24,
                                                        height: (
                                                            238),
                                                        width:
                                                            (
                                                                1))
                                                  ])))
                                    ]))),
                        Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapRowmaskgroup(context);
                                },
                                child: Container(
                                    margin:  EdgeInsets.only(
                                        left: 249, right: 23, bottom: 225),
                                    padding:  EdgeInsets.only(
                                        left: 9, top: 3, right: 9, bottom: 3),
                                    decoration: AppDecoration.outline2.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup,
                                              height: (21),
                                              width: (21),
                                              margin:  EdgeInsets.only(top: 1)),
                                          Padding(
                                              padding:  EdgeInsets.only(left: 7),
                                              child: Text("COMPARE",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallBlueA700))
                                        ]))))
                      ])),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding:  EdgeInsets.only(top: 13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMaskgroup40x40,
                                    height: (40),
                                    width: (40)),
                                Padding(
                                    padding:  EdgeInsets.only(
                                        left: 13, top: 12, bottom: 6),
                                    child: Text("VIEW 360° FULL SCREEN",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .titleSmallBlueA700
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding:  EdgeInsets.only(left: 16, top: 18, right: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Alto K10 Std",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.titleLargeBlack900),
                                Padding(
                                    padding:  EdgeInsets.only(top: 8, bottom: 6),
                                    child: Text("View Images",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .labelMediumBlueA700
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  Padding(
                      padding:  EdgeInsets.only(left: 16, top: 5),
                      child: Row(children: [
                        Padding(
                            padding:  EdgeInsets.only(bottom: 1),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle239,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular(
                                            (5))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle240,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular(
                                            (5)),
                                        margin:  EdgeInsets.only(left: 9)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle241,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular(
                                            (5)),
                                        margin:  EdgeInsets.only(left: 9)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle242,
                                        height: (30),
                                        width: (30),
                                        radius: BorderRadius.circular(
                                            (5)),
                                        margin:  EdgeInsets.only(left: 9))
                                  ]),
                                  Padding(
                                      padding:  EdgeInsets.only(top: 4),
                                      child: Row(children: [
                                        Text("Rs. 4.57L",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleLargeBlack900),
                                        Padding(
                                            padding:  EdgeInsets.only(
                                                left: 8, top: 7, bottom: 4),
                                            child: Text("Onwards",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2))
                                      ])),
                                  Padding(
                                      padding:  EdgeInsets.only(top: 3),
                                      child: Row(children: [
                                        Text("On road price (GST)",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                CustomTextStyles.bodySmall12_2),
                                        Padding(
                                            padding:  EdgeInsets.only(left: 7),
                                            child: Text("Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBlueA700Bold))
                                      ]))
                                ])),
                        Container(
                            height: (38),
                            width: (142),
                            margin:  EdgeInsets.only(left:4 ,top: 48),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgMdilocation,
                                      height: (18),
                                      width: (18),
                                      alignment: Alignment.bottomLeft),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text("View Price Breakup",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallBlueA700))
                                ]))
                      ])),
                  Padding(
                      padding:  EdgeInsets.only(left: 16),
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbolsstar,
                            height: (22),
                            width: (22)),
                        CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbolsstar,
                            height: (22),
                            width: (22),
                            margin:  EdgeInsets.only(left: 4)),
                        CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbolsstar,
                            height: (22),
                            width: (22),
                            margin:  EdgeInsets.only(left: 4)),
                        CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbolsstar,
                            height: (22),
                            width: (22),
                            margin:  EdgeInsets.only(left: 4)),
                        CustomImageView(
                            svgPath: ImageConstant.imgMaterialsymbolsstarhalf,
                            height: (22),
                            width: (22),
                            margin:  EdgeInsets.only(left: 4)),
                        Container(
                            width: (77),
                            margin:  EdgeInsets.only(left: 13, top: 3, bottom: 2),
                            padding:  EdgeInsets.only(
                                left: 8, top: 1, right: 8, bottom: 1),
                            decoration: AppDecoration.txtOutline.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder2),
                            child: Text("86 Reviews",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelMediumGray80001
                                    .copyWith(
                                        letterSpacing: (0.2))))
                      ])),
                  Padding(
                      padding:  EdgeInsets.only(left: 16, top: 2),
                      child: Text("Get EMI assistance",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700)),
                  Container(
                      margin:  EdgeInsets.only(top: 8),
                      padding:  EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup9),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding:  EdgeInsets.only(top: 42),
                                child: Text("Colors (10)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup87,
                                height: (40),
                                width: (352),
                                margin:  EdgeInsets.only(left: 6, top: 24))
                          ])),
                  Container(
                      height: (137),
                      width: double.maxFinite,
                      margin:  EdgeInsets.only(top: 27),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding:  EdgeInsets.only(
                                    left: 15, top: 40, right: 15, bottom: 40),
                                decoration: AppDecoration.fill1,
                                child: Padding(
                                    padding:  EdgeInsets.only(bottom: 34),
                                    child: Text("Full Details",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall)))),
                        Container(
                            height: (44),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(
                                    (5))),
                            child: TabBar(
                                controller: tabviewController,
                                labelColor: theme.colorScheme.primary,
                                labelStyle: TextStyle(),
                                unselectedLabelColor: appTheme.gray800,
                                unselectedLabelStyle: TextStyle(),
                                indicatorPadding:  EdgeInsets.all(6.5),
                                indicator: BoxDecoration(
                                    color: appTheme.blueA700,
                                    borderRadius: BorderRadius.circular(
                                        (5))),
                                tabs: [
                                  Tab(
                                      child: Text("Overview",
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("Features",
                                          overflow: TextOverflow.ellipsis)),
                                  Tab(
                                      child: Text("Specifications",
                                          overflow: TextOverflow.ellipsis))
                                ]))
                      ])),
                  SizedBox(
                    height: (3041),
                    child: TabBarView(controller: tabviewController, children: [
                      CarDetail2OverviewPage(),
                      CarDetail3FeaturesPage(),
                      CarDetail4SpecificationsPage()
                    ]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapRowmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }
}
