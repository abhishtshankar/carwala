import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/car_detail_page_screen/three_d_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../car_detail_page_screen/widgets/list3_item_widget.dart';
import '../car_detail_page_screen/widgets/list_one3_item_widget.dart';
import '../car_detail_page_screen/widgets/listrectangleei3_item_widget.dart';
import '../compare_navbar_screen/compaire_navbar2.dart';
import '../homapage_screen/widgets/list_two_item_widget.dart';
import 'alternative.dart';
import 'image_viewer.dart';

// ignore_for_file: must_be_immutable
class CarDetailPageScreen extends StatefulWidget {
  CarDetailPageScreen({Key? key}) : super(key: key);

  @override
  State<CarDetailPageScreen> createState() => _CarDetailPageScreenState();
}

class _CarDetailPageScreenState extends State<CarDetailPageScreen> {
  TextEditingController priceoneController = TextEditingController();
  TextEditingController group372Controller = TextEditingController();

  TextEditingController pricesevenController = TextEditingController();

  TextEditingController priceeightController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 0;
  final List<String> items = [
    "Key Specifications",
    "Version (2)",
    "Mileage",
    "Colours",
    "Over Take",
    "Alternative",
    "Images",
    "Videos",
    "Popular Cars",
    "Expert Reviews",
    "News",
    "Upcoming Launches",
  ];
  int currentIndex = 0;
  List<String> imagePaths = [
    'assets/images/img_rectangle19.png',
    'assets/images/img_rectangle13.png',
    'assets/images/img_rectangle119_113x179.png',
    'assets/images/img_rectangle260.png',
  ];
  void _scrollToSection(String sectionName) {
    final Map<String, double> sections = {
      "Key Specifications":500.0,
      "Version": 700.0,
      "Mileage": 1000.0,
      "Colours": 1200.0,
      "Over Take" : 1650,
      "Alternative": 2100,
      "Images": 2400,
      "Videos": 2700,
      "Popular Cars": 3200,
      "Expert Reviews": 4700,
      "News": 5000,
      "Upcoming Launches": 5500,
    };
    _scrollController.animateTo(
      sections[sectionName] ?? 0.0, // Scroll to 0.0 if the section is not found
      duration: Duration(milliseconds: 500), // Adjust the duration as needed
      curve: Curves.easeInOut,
    );
  }
  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: AppbarImage(
            height: (24),
            width: (24),
            svgPath: ImageConstant.imgArrowleft,
            margin:  EdgeInsets.only(left: 16, top: 12, bottom: 12),
            onTap: () {
              onTapArrowleft25(context);
            }),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black87,
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.share_outlined,
              color: Colors.black87,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20), // Set the desired height of your Column
          child: Column(
            children: <Widget>[
              Container(
                height: 20,
                child: ListView(
                  padding: EdgeInsets.only(left: 15, right: 5),
                  scrollDirection: Axis.horizontal,
                  children: items.asMap().entries.map((entry) {
                    final int index = entry.key;
                    final String item = entry.value;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        _scrollToSection(item);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          item,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == index
                                ? CustomTextStyles.titleSmallRedA700.color
                                : Colors.grey.shade500,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              // Your other content here
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,

        child: Column(
          children: [

            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompareNavbarScreen2()));
              },
              child: Container(
                margin:  EdgeInsets.only(
                  left: 249,
                  top: 2,
                  right: 23,
                ),
                padding:  EdgeInsets.only(left: 9, top: 3, right: 9, bottom: 3),
                decoration: AppDecoration.outline2
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskgroup,
                        height: (21),
                        width: (21),
                        margin:  EdgeInsets.only(top: 1)),
                    Padding(
                      padding:  EdgeInsets.only(left: 7),
                      child: Text("COMPARE",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
              ListView.builder(
              itemCount: imagePaths.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Hero(
                    tag: 'image_$index',
                    child: Container(
                      width: 350,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                currentIndex =
                                    (currentIndex - 1) % imagePaths.length;
                                if (currentIndex < 0) {
                                  currentIndex = imagePaths.length - 1;
                                }
                              });
                            },
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              setState(() {
                                currentIndex =
                                    (currentIndex + 1) % imagePaths.length;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>ThreeDImageView()));
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMaskgroup40x40,
                    height: (40),
                    width: (40)),
                Padding(
                    padding:  EdgeInsets.only(left: 13, top: 12 ,bottom: 6),
                    child: Text("VIEW 360° FULL SCREEN",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlueA700
                            .copyWith(decoration: TextDecoration.underline)))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Maruti Suzuki Alto K10",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900),
                    GestureDetector(
                        onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageViewer(), // Open the image viewer
                          ),
                        );
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(top: 6, bottom: 2),
                        child: Text(
                          "View Images",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle239,
                    height: (30),
                    width: (30),
                    radius: BorderRadius.circular((5))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle240,
                    height: (30),
                    width: (30),
                    radius: BorderRadius.circular((5)),
                    margin:  EdgeInsets.only(left: 9)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle241,
                    height: (30),
                    width: (30),
                    radius: BorderRadius.circular((5)),
                    margin:  EdgeInsets.only(left: 9)),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle242,
                  height: (30),
                  width: (30),
                  radius: BorderRadius.circular(
                    (5),
                  ),
                  margin:  EdgeInsets.only(left: 9),
                )
              ]),
            ),
            Padding(
                padding:  EdgeInsets.only(left: 16, top: 4),
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text("Rs. 4.57L",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLargeBlack900),
                  Padding(
                      padding:  EdgeInsets.only(left: 8, top: 7, bottom: 4),
                      child: Text("Onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmall12_2)),
                  GestureDetector(
                      onTap: () {
                        bottomSheets(context);
                      },
                      child: Padding(
                          padding:  EdgeInsets.only(left: 23, top: 7, bottom: 1),
                          child: Text("View Price Breakup",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700)))
                ])),
            Padding(
                padding:  EdgeInsets.only(left: 16, top: 3),
                child: Row(children: [
                  Text("On road price (GST)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmall12_2),
                  Padding(
                      padding:  EdgeInsets.only(left: 6),
                      child: Text("Noida",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeBlueA700Bold)),
                  CustomImageView(
                      svgPath: ImageConstant.imgMdilocation,
                      height: (18),
                      width: (18),
                      margin:  EdgeInsets.only(left: 4))
                ])),
            Padding(
              padding:  EdgeInsets.only(left: 16, top: 5),
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
                  padding:  EdgeInsets.only(left: 8, top: 1, right: 8, bottom: 1),
                  decoration: AppDecoration.txtOutline.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder2),
                  child: Text(
                    "86 Reviews",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelMediumGray80001.copyWith(
                      letterSpacing: (0.2),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 230, top: 2),
                child: Text("Get EMI assistance",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleSmallBlueA700)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: 1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding:  EdgeInsets.all( 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgBookmark)),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 10),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                            width: (85),
                                            child: Text("Key Specifications",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.labelLarge)),
                                      ]),
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only( left: 12, top: 1, bottom: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding:  EdgeInsets.all( 13),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgCar)),
                              Padding(
                                padding:  EdgeInsets.only(top: 12),
                                child: Text("Versions",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 23, top: 1, bottom: 14),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  padding:  EdgeInsets.all( 13),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup165)),
                              Padding(
                                padding:  EdgeInsets.only(top: 14),
                                child: Text("Mileage",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                          padding:  EdgeInsets.only(left: 22 ,top: 1, bottom: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 60,
                                    width: 60,
                                    padding:  EdgeInsets.all( 16),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgSettings)),
                                Padding(
                                    padding:  EdgeInsets.only(left:4, top: 12),
                                    child: Text("Colours",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.labelLarge))
                              ])),
                      Padding(
                        padding:  EdgeInsets.only(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin:  EdgeInsets.only(right: 1),
                                  padding:  EdgeInsets.all( 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding:  EdgeInsets.only(top: 13),
                                child: Text("Our Take",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin:  EdgeInsets.only(right: 1),
                                  padding:  EdgeInsets.all( 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding:  EdgeInsets.only(top: 13),
                                child: Text("Alternative",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin:  EdgeInsets.only(right: 1),
                                  padding:  EdgeInsets.all( 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding:  EdgeInsets.only(top: 13),
                                child: Text("Images",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin:  EdgeInsets.only(right: 1),
                                  padding:  EdgeInsets.all( 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding:  EdgeInsets.only(top: 13),
                                child: Text("Videos",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 21, top: 1, bottom: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 60,
                                  width: 60,
                                  margin:  EdgeInsets.only(right: 1),
                                  padding:  EdgeInsets.all( 12),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup37944)),
                              Padding(
                                padding:  EdgeInsets.only(top: 13),
                                child: Text("Expert \nReviews",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelLarge),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 230, top: 2),
                child: Text("Key Specification",

                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: (30),
                                width: (30)),
                            Padding(
                                padding:  EdgeInsets.only(top: 10),
                                child: Text("Make",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding:  EdgeInsets.only(left: 1, top: 5),
                                child: Text("Alto",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: (30),
                                width: (30)),
                            Padding(
                                padding:  EdgeInsets.only(top: 10),
                                child: Text("Model Year",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding:  EdgeInsets.only(left: 1, top: 5),
                                child: Text("2023",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: (30),
                                width: (30)),
                            Padding(
                                padding:  EdgeInsets.only(top: 10),
                                child: Text("Engine Type",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding:  EdgeInsets.only(left: 1, top: 5),
                                child: Text("Diesel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage18,
                                height: (30),
                                width: (30)),
                            Padding(
                                padding:  EdgeInsets.only(top: 10),
                                child: Text("Horse Power",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelMediumGray800Bold)),
                            Padding(
                                padding:  EdgeInsets.only(left: 1, top: 5),
                                child: Text("Diesel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelLarge))
                          ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage22,
                                  height: (30),
                                  width: (30),
                                  margin:  EdgeInsets.only(left: 5)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 2, top: 12),
                                  child: Text("Torque",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 4),
                                  child: Text("200 Nm",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage23,
                                  height: (30),
                                  width: (39),
                                  margin:  EdgeInsets.only(left: 8)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 12),
                                  child: Text("Top Speed",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 1, top: 4),
                                  child: Text("227 km/h",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage27,
                                  height: (30),
                                  width: (30),
                                  margin:  EdgeInsets.only(left: 14)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 15),
                                  child: Text("Fuel Economy",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding:  EdgeInsets.only(top: 4),
                                      child: Text("22-31 km/l",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelLarge)))
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage25,
                                  height: (30),
                                  width: (30)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 11),
                                  child: Text("Safety Ratings",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding:  EdgeInsets.only(top:4 ,right: 17),
                                      child: Text("4 Star",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.labelLarge)))
                            ])
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage26,
                                  height: (30),
                                  width: (30)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 10),
                                  child: Text("0-60 km/h",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 1, top: 5),
                                  child: Text("5 sec",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage24,
                                  height: (30),
                                  width: (30)),
                              Padding(
                                  padding:  EdgeInsets.only(top: 10),
                                  child: Text("Mileage",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .labelMediumGray800Bold)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 1, top: 5),
                                  child: Text("45 km/ litre",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge))
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 230, top: 20),
                child: Text("Version (2)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Container(
              width: double.infinity,
              margin:  EdgeInsets.only(top: 10),
              padding:  EdgeInsets.only(left: 18, top: 14, right: 18, bottom: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskgroup24x24,
                        height: (24),
                        width: (24),
                        margin:  EdgeInsets.only(bottom: 1)),
                    Padding(
                        padding:  EdgeInsets.only(left: 14, top: 4),
                        child: Text("Fuel Type",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1)),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 10),
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    Container(
                      width: 2,
                      height: 30,
                      color: Colors.black87,
                    ),
                    // CustomImageView(
                    //     svgPath: ImageConstant.imgArrow1,
                    //     height: (1),
                    //     width: (1),
                    //     margin:  EdgeInsets.only(left: 35, top: 15, bottom: 9)),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage31,
                        height: (24),
                        width: (24),
                        margin:  EdgeInsets.only(left: 20, bottom: 1)),
                    Padding(
                        padding:  EdgeInsets.only(left: 10, top: 2 ,bottom: 1),
                        child: Text("Transmission",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1)),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                  ]),
            ),
            GestureDetector(
              onTap: () {
                onTapVersion(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Alto K10 Std ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900),
                            Text("  ( CLICK TO VIEW )",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlueA700),
                          ],
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Rs. 3.05 Cr",
                                  style: CustomTextStyles.labelMediumGray80010),
                              TextSpan(
                                  text: " ",
                                  style: CustomTextStyles.bodySmallGray800_2),
                              TextSpan(
                                  text: "on Road Price (GST), Gaziabad",
                                  style: CustomTextStyles.bodySmallGray800Light)
                            ]),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleSmallBlueA700),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Alto K10 Lxi ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900),
                          Text("  ( CLICK TO VIEW )",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Rs. 3.05 Cr",
                                style: CustomTextStyles.labelMediumGray80010),
                            TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallGray800_2),
                            TextSpan(
                                text: "on Road Price (GST), Gaziabad",
                                style: CustomTextStyles.bodySmallGray800Light)
                          ]),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  Text("Rs. 8.04 Lalh",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Alto K10 Vxi ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900),
                          Text("  ( CLICK TO VIEW )",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlueA700),
                        ],
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Rs. 3.05 Cr",
                                style: CustomTextStyles.labelMediumGray80010),
                            TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallGray800_2),
                            TextSpan(
                                text: "on Road Price (GST), Gaziabad",
                                style: CustomTextStyles.bodySmallGray800Light)
                          ]),
                          textAlign: TextAlign.left),
                    ],
                  ),
                  Text("Rs. 8.04 Lalh",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleSmallBlueA700),
                ],
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 280, top: 20),
                child: Text("Mileage",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CNG Manual                ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: (30),
                        width: (50),
                        margin:  EdgeInsets.only(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Petrol, Automatic(TC)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: (30),
                        width: (50),
                        margin:  EdgeInsets.only(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. 8.04 Lalh",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Container(
                      width: 2,
                      height: 50,
                      color: Colors.black87,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Diesel Manual           ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                        Text("3982 cc",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 15)),
                      ],
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage42,
                        height: (30),
                        width: (50),
                        margin:  EdgeInsets.only(bottom: 1)),
                  ],
                ),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 280, top: 50),
                child: Text("Colors (10)",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall)),
            CustomImageView(
              imagePath: ImageConstant.imgGroup87,
              height: (40),
              width: (352),
              alignment: Alignment.center,
              margin:  EdgeInsets.only(top: 24),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: double.infinity,
                color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                        padding:  EdgeInsets.only(top: 30, right: 250),
                        child: Text("Our Take",
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding:  EdgeInsets.only(left: 6, top: 47),
                      child: IntrinsicWidth(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 280,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, left: 30),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage28,
                                              height: (40),
                                              width: (40)),
                                          Padding(
                                              padding:  EdgeInsets.only(
                                                  left: 25, top: 7, bottom: 2),
                                              child: Text("Good Things",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ]),
                                        Container(
                                            width: (256),
                                            margin:  EdgeInsets.only(left: 6, top: 20),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)),
                                        Container(
                                            width: (256),
                                            margin:  EdgeInsets.only(left: 6, top: 9),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2)),
                                        Container(
                                            width: (256),
                                            margin:  EdgeInsets.only(left: 6, top: 9),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmall12_2))
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28.0),
                                child: Container(
                                  height: 280,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.white70,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.red)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 30),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage29,
                                                height: (40),
                                                width: (40)),
                                            Padding(
                                                padding:  EdgeInsets.only(
                                                    left: 25,
                                                    top: 7,
                                                    bottom: 2),
                                                child: Text("Good Things",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleLarge))
                                          ]),
                                          Container(
                                              width: (256),
                                              margin:
                                                   EdgeInsets.only(left: 6, top: 20),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2)),
                                          Container(
                                              width: (256),
                                              margin:
                                                   EdgeInsets.only(left: 6, top: 9),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2)),
                                          Container(
                                              width: (256),
                                              margin:
                                                   EdgeInsets.only(left: 6, top: 9),
                                              child: Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodySmall12_2))
                                        ]),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                        padding:  EdgeInsets.only(right: 272 ,top: 36),
                        child: Text("Verdict",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleLargeBlueA700)),
                    Container(
                        width: (331),
                        margin:  EdgeInsets.only(left: 2, top: 13, right: 24),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmall12_2)),
                    Padding(
                        padding:  EdgeInsets.only(top: 18, left: 20, right: 20),
                        child: Divider(
                            height: (1),
                            thickness: (1),
                            color: appTheme.blueA700,
                            endIndent: (6))),
                    Padding(
                        padding:  EdgeInsets.only(right: 260, top: 25),
                        child: Text("Review",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleLargeBlueA700)),
                    Container(
                        width: (331),
                        margin:
                             EdgeInsets.only(left: 3, top: 13, right: 23, bottom: 50),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas turpis non sem sollicitudin, nec posuere nisl laoreet. ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmall12_2))
                  ],
                ),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(top: 30, right: 250),
                child: Text("Alternatives",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge)),
            Padding(
                padding:  EdgeInsets.only(right: 71, top: 12),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Showing similar cars in same ‘",
                          style: CustomTextStyles.bodySmall12),
                      TextSpan(
                          text: "Hatchback’ category",
                          style: CustomTextStyles.labelLargeBlack900SemiBold_1)
                    ]),
                    textAlign: TextAlign.left)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12,top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(top: 30, right: 250),
                child: Text("Images",
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: (208),
                          width: (372),
                          margin:  EdgeInsets.only(left: 18, top: 5),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,

                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgDownload11,
                                                height: (168),
                                                width: (224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: (168),
                                                width: (224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: (168),
                                                width: (224)),
                                            SizedBox(width:5),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgDownload11,
                                                height: (168),
                                                width: (224)),
                                          ]),
                                    )),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding:  EdgeInsets.only(right: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle259,
                                                  height: (54),
                                                  width: (54)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle260,
                                                  height: (54),
                                                  width: (54),
                                                  margin:  EdgeInsets.only(left: 9)),
                                              Container(
                                                  height: (54),
                                                  width: (54),
                                                  margin:  EdgeInsets.only(left: 9),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle261,
                                                            height: (54),
                                                            width: (54),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                     EdgeInsets.only(
                                                                        right:
                                                                            9),
                                                                child: Text(
                                                                    "60+",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: CustomTextStyles
                                                                        .titleMediumPrimary)))
                                                      ]))
                                            ])))
                              ])),

                    ]),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 188, top: 55),
                child: Text("Alto K10 Videos",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Padding(
              padding:  EdgeInsets.only(left: 16, top: 13),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  IntrinsicWidth(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: (159),
                                  width: (280),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle219149x265,
                                            height: (149),
                                            width: (280),
                                            radius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  (4)),
                                              topRight: Radius.circular(
                                                (4),
                                              ),
                                            ),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgIconparksolidplay,
                                            height: (24),
                                            width: (24),
                                            alignment: Alignment.center),
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      height: (149),
                                      width: (265),
                                      margin:  EdgeInsets.only(left: 15),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle220149x265,
                                                height: (149),
                                                width: (265),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgIconparksolidplay,
                                                height: (24),
                                                width: (24),
                                                alignment: Alignment.center)
                                          ])),
                                )
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding:  EdgeInsets.only(
                                         left: 12,
                                        top: 10,
                                        right: 52,
                                        bottom: 10),
                                    decoration: AppDecoration.outline1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderBL4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Maruti Invicto-Youtube video ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                            padding:  EdgeInsets.only(
                                                left: 2 ,top: 14, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      height:
                                                          (16),
                                                      width:
                                                          (22),
                                                      margin:  EdgeInsets.only(
                                                          top: 3, bottom: 3),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgContrast,
                                                                height:
                                                                    (
                                                                        16),
                                                                width:
                                                                    (
                                                                        22),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRefresh,
                                                                height:
                                                                    (9),
                                                                width:
                                                                    (9),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                           EdgeInsets.only(left: 8),
                                                      child: Text("140",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleMediumGray800_1)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUiwlikeo,
                                                      height: (24),
                                                      width: (24)),
                                                  Padding(
                                                    padding:
                                                         EdgeInsets.only(left: 8),
                                                    child: Text("23",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumGray800_1),
                                                  ),
                                                ]),
                                          ),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:  EdgeInsets.only(left: 15),
                                    padding:  EdgeInsets.only(
                                         left: 12,
                                        top: 10,
                                    right: 12,
                                        bottom: 10),
                                    decoration: AppDecoration.outline1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderBL4),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Maruti Invicto-Youtube video ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Padding(
                                            padding:  EdgeInsets.only(
                                                left: 2 ,top: 14, bottom: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      height:
                                                          (16),
                                                      width:
                                                          (22),
                                                      margin:  EdgeInsets.only(
                                                          top: 3, bottom: 3),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgContrast,
                                                                height:
                                                                    (
                                                                        16),
                                                                width:
                                                                    (
                                                                        22),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRefresh,
                                                                height:
                                                                    (9),
                                                                width:
                                                                    (9),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                           EdgeInsets.only(left: 8),
                                                      child: Text("140",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: CustomTextStyles
                                                              .titleMediumGray800_1)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgUiwlikeo,
                                                      height: (24),
                                                      width: (24)),
                                                  Padding(
                                                    padding:
                                                         EdgeInsets.only(left: 8),
                                                    child: Text("23",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: CustomTextStyles
                                                            .titleMediumGray800_1),
                                                  ),
                                                ]),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                        ]),
                  ),
                  Container(
                    height: (243),
                    width: (78),
                    margin:  EdgeInsets.only(left: 15),
                  ),
                ]),
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 29),
              padding:  EdgeInsets.only(
                left: 49,
                right: 49,
              ),
              decoration: AppDecoration.fill,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage41,
                height: (120),
                width: (287),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(right: 118, top: 55, bottom: 20),
                child: Text("Top Popular Cars In India",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: (197),
                    child: ListView.separated(
                        padding:  EdgeInsets.only(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: (14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),
            Padding(
                padding:  EdgeInsets.only(
                  right: 38,
                  top: 55,
                ),
                child: Text("Popular Compact Hatchback Cars",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 6, top: 47),
              child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12,top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CarDetailPageScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: (131),
                                        width: (136),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text("Rs.",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .labelLargeBlack900)),
                                              SizedBox(
                                                height: (131),
                                                width: (136),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                               EdgeInsets.only(
                                                                  left: 24),
                                                              child: Text(
                                                                  "4.57 Lakh",
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: CustomTextStyles
                                                                      .labelLargeBlack900))),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pushReplacement(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      CarDetailPageScreen2()));
                                                        },
                                                        child: Column(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .min,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                  ImageConstant
                                                                      .imgMarutialto1667634241,
                                                                  height:
                                                                  (
                                                                      83),
                                                                  width:
                                                                  (
                                                                      133),
                                                                  margin:
                                                                   EdgeInsets.only(
                                                                      left:
                                                                      3)),
                                                              Padding(
                                                                  padding:
                                                                   EdgeInsets.only(
                                                                      top:
                                                                      7),
                                                                  child: Text(
                                                                      "Hyundai  Santro  2023",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: CustomTextStyles
                                                                          .bodySmall12_1)),
                                                              Align(
                                                                  alignment:
                                                                  Alignment
                                                                      .centerRight,
                                                                  child: Padding(
                                                                      padding:  EdgeInsets.only(
                                                                          top:
                                                                         4,
                                                                          right:
                                                                          1),
                                                                      child: Text(
                                                                          "Onwards",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                          CustomTextStyles.bodySmall9)))
                                                            ]),
                                                      ),
                                                    ]),
                                              ),
                                            ]),
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:  EdgeInsets.only(left: 30, top: 10),
                                        child: Text("Compare with Alto K10",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.labelSmall),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           left: 12, top: 15),
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blueAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Center(
                                          child: Text("View Price Breakup",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                              theme.textTheme.labelSmall),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(
                  right: 38,
                  top: 55,
                ),
                child: Text("Alto K10 Price In Cities Near Noida",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Container(
                width: double.maxFinite,
                margin:  EdgeInsets.only(top: 19),
                padding:  EdgeInsets.only(left: 19, top: 5, right: 19, bottom: 5),
                decoration: AppDecoration.fill,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding:  EdgeInsets.only(top: 1),
                          child: Text("City",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.labelLargeBlack900SemiBold)),
                      Padding(
                          padding:  EdgeInsets.only(right: 56, bottom: 2),
                          child: Text("On-Road Price",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.labelLargeBlack900SemiBold))
                    ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Delhi",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: (1),
                width: double.maxFinite,
                margin:  EdgeInsets.only(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: (1),
                              thickness: (1),
                              color: appTheme.gray800))),
                ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gaziabad",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: (1),
                width: double.maxFinite,
                margin:  EdgeInsets.only(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: (1),
                              thickness: (1),
                              color: appTheme.gray800))),
                ])),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Jaipur",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]))),
            Container(
                height: (1),
                width: double.maxFinite,
                margin:  EdgeInsets.only(top: 17),
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                              height: (1),
                              thickness: (1),
                              color: appTheme.gray800))),
                ])),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lucknow",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlueA700SemiBold),
                      Text("₹6.96 Lakh onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallBlack900_1)
                    ]),
              ),
            ),
            Container(
              height: (1),
              width: double.maxFinite,
              margin:  EdgeInsets.only(top: 17),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                        height: (1),
                        thickness: (1),
                        color: appTheme.gray800),
                  ),
                ),
              ]),
            ),
            CustomOutlinedButton(
                text: "View More Cities",
                margin:  EdgeInsets.only(left: 16, top: 20, right: 21),
                buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, (45)))),
                buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                alignment: Alignment.center),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: (246),
                width: (317),
                margin:  EdgeInsets.only(top: 83),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle250,
                                height: (71),
                                width: (311)),
                            Padding(
                              padding:  EdgeInsets.only(top: 32),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgDocument,
                                      height: (51),
                                      width: (51),
                                      margin:  EdgeInsets.only(top: 2 ,bottom: 76)),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 11),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Maruti Suzuki Alto K10 Brochure",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium),
                                        Container(
                                            width: (235),
                                            margin:  EdgeInsets.only(top: 2),
                                            child: Text(
                                                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodyMediumGray70001)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding:  EdgeInsets.only(
                                                    top: 2,left: 30),
                                                child: Text("Download Brochure",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleSmallRed600_1)))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDownload,
                      height: (42),
                      width: (42),
                      alignment: Alignment.bottomLeft,
                      margin:  EdgeInsets.only(left: 58, bottom: 3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(
                  right: 188,
                  top: 55,
                ),
                child: Text("Expert Reviews",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 14, right: 14),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding:  EdgeInsets.only(left: 14, right: 14),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, bottom: 10, top: 10),
                      child: Container(
                        width: 300,
                        decoration: AppDecoration.outline3.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse35,
                                      height: (40),
                                      width: (40),
                                      radius: BorderRadius.circular(
                                          (20))),
                                  Padding(
                                      padding:  EdgeInsets.only(left: 14, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Loren Espom",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallBlack900_1),
                                            Padding(
                                                padding:  EdgeInsets.only(top: 3),
                                                child: Text(
                                                    "Jun 3rd 2023, 11:30 PM",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]),
                                Container(
                                  width: (244),
                                  margin:  EdgeInsets.only(top: 8),
                                  child: Text(
                                      "Korem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per ",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(
                  right: 108,
                  top: 55,
                ),
                child: Text("Alto K10 News & Updates",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: (197),
                    child: ListView.separated(
                        padding:  EdgeInsets.only(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: (14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),

            //add

            Padding(
                padding:  EdgeInsets.only(top: 38),
                child: Text(" Just Launched cars in india",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: (197),
                    child: ListView.separated(
                        padding:  EdgeInsets.only(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: (14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),
            Padding(
                padding:  EdgeInsets.only(top: 40),
                child: Text(" Upcoming launches",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge)),
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: (197),
                    child: ListView.separated(
                        padding:  EdgeInsets.only(left: 19, top: 12),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: (14));
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTwoItemWidget();
                        }))),
            CustomOutlinedButton(
                text: "View upcoming all Luanches",
                margin:  EdgeInsets.only(left: 21, top: 18, right: 21,bottom: 10),
                buttonStyle: CustomButtonStyles.outlineGreenA400.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, (45)))),
                buttonTextStyle: CustomTextStyles.titleSmallGreenA400,
                onTap: () {
                  onTapViewupcoming(context);
                }),

            // Bottom Sheets Containt
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin:  EdgeInsets.only(left: 18, right: 18, bottom: 18),
        decoration: AppDecoration.fill,
        child: CustomElevatedButton(
          text: "Get New Offers",
          buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                (45),
              ),
            ),
          ),
          buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppBar(
                        height: (
                          32
                        ),
                        title: Padding(
                          padding:  EdgeInsets.only(
                             left: 32,
                          ),
                          child: Text(
                            "Fill your Details",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.labelLargeBlack900SemiBold,
                          ),
                        ),
                        actions: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: AppbarImage(
                              height: (
                                15
                              ),
                              width: (
                                15
                              ),
                              imagePath: ImageConstant.imgImage70,
                              margin:  EdgeInsets.only(
                                left: 21,
                                right: 21,
                                bottom: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomTextFormField(
                        // controller: nameController,
                        margin:  EdgeInsets.only(
                           left: 32,
                          top: 17,
                          right: 28,
                        ),
                        contentPadding:  EdgeInsets.only(
                           left: 12,
                          top: 9,
                      right: 12,
                          bottom: 9,
                        ),
                        textStyle: CustomTextStyles.bodySmallGray80012,
                        hintText: "Enter your Name",
                        hintStyle: CustomTextStyles.bodySmallGray80012,
                        textInputAction: TextInputAction.next,
                        filled: true,
                        fillColor: appTheme.blueGray100,
                        defaultBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        enabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        focusedBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        disabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                      ),
                      CustomTextFormField(
                        // controller: mobilenumberController,
                        margin:  EdgeInsets.only(
                           left: 32,
                          top: 15,
                          right: 28,
                        ),
                        contentPadding:  EdgeInsets.only(
                           left: 12,
                          top: 9,
                      right: 12,
                          bottom: 9,
                        ),
                        textStyle: CustomTextStyles.bodySmallGray80012,
                        hintText: "Enter your Mobile Number",
                        hintStyle: CustomTextStyles.bodySmallGray80012,
                        textInputType: TextInputType.phone,
                        filled: true,
                        fillColor: appTheme.blueGray100,
                        defaultBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        enabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        focusedBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                        disabledBorderDecoration:
                            TextFormFieldStyleHelper.outlineGray800TL4,
                      ),
                      CustomOutlinedButton(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        text: "SUBMIT",
                        margin:  EdgeInsets.only(
                          left: 33,
                          top: 2,
                          right: 27,
                        ),
                        buttonStyle: CustomButtonStyles.outlinePrimary.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                          double.maxFinite,
                          (
                            45
                          ),
                        ))),
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(
                            top: 19,
                            bottom: 29,
                          ),
                          child: Center(
                            child: Text(
                              "< Go Back ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallGreenA700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  onTapViewupcoming(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  onTapColumnmodel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapTxtComparewithalto(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapViewprice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  onTapGetnewoffers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }

  onTapRowmaskgroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen2);
  }

  onTapTxtViewpricebreaku(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  onTapColumnmarutialt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapColumnmarutialt1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapColumnmarutialt2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  onTapTxtComparewithalto1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  onTapTxtComparewithalto2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  onTapVersion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailVersionPageScreen);
  }
}

void bottomSheets(context) {
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
    ),
    isScrollControlled: true,
    constraints: BoxConstraints.tight(
      Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height * .9),
    ),
    builder: (context) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Align(
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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: (207),
                                  child: Divider(
                                    height: (6),
                                    thickness: (6),
                                    color: appTheme.blueGray100,
                                    endIndent: (40),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: 54),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: (150),
                                              child: Divider(
                                                height: (2),
                                                thickness: (2),
                                                color: appTheme.blueGray100,
                                                endIndent:
                                                    (40),
                                              ),
                                            ),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle19,
                                                height: (86),
                                                width: (142)),
                                          ],
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(
                                              left: 20, top: 6, bottom: 32),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("On road price (GST)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .bodySmall12_2),
                                                Padding(
                                                  padding:  EdgeInsets.only(top: 7),
                                                  child: Text("Alto K10",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900_1),
                                                ),
                                              ]),
                                        ),
                                      ]),
                                ),
                              ]),
                        ),
                        CustomImageView(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          imagePath: ImageConstant.imgImage70,
                          height: (20),
                          width: (20),
                          margin:  EdgeInsets.only(
                              left: 43, top: 11, bottom: 115, right: 20),
                        )
                      ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 18, top: 96, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 2),
                          child: Text("Ex-Showroom Price",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmall12_2),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage58,
                          height: (20),
                          width: (20),
                          margin:  EdgeInsets.only(left: 13, bottom: 1),
                        ),
                        Spacer(),
                        Text("₹6.96 Lakh",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 18, top: 12 ,right: 17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding:  EdgeInsets.only(bottom: 2),
                            child: Text("Registration",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall12_2)),
                        Text("₹52089",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Container(
                  height: (22),
                  width: (355),
                  margin:  EdgeInsets.only(top: 13),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage58,
                        height: (20),
                        width: (20),
                        alignment: Alignment.topLeft,
                        margin:  EdgeInsets.only(left: 72)),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: 3),
                              child: Text("Insurance",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmall12_2),
                            ),
                            Text("₹52089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1),
                          ]),
                    ),
                  ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 18, top: 15, right: 17),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding:  EdgeInsets.only(bottom: 2),
                            child: Text("Other Charges",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmall12_2)),
                        Text("₹2089",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleSmallBlack900_1),
                      ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 14),
                  child: Divider(
                    height: (1),
                    thickness: (1),
                    color: appTheme.black900,
                    indent: (16),
                    endIndent: (18),
                  ),
                ),
                Container(
                  height: (22),
                  width: (355),
                  margin:  EdgeInsets.only(top: 11),
                  child: Stack(alignment: Alignment.topRight, children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding:  EdgeInsets.only(bottom: 3),
                                child: Text("Total On Road Price in Noida",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2)),
                            Text("₹2089",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900_1),
                          ]),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage58,
                      height: (20),
                      width: (20),
                      alignment: Alignment.topRight,
                      margin:  EdgeInsets.only(right: 156),
                    ),
                  ]),
                ),
                CustomOutlinedButton(
                    text: "Show more price breakup >",
                    margin:  EdgeInsets.only(left: 17, top: 25, right: 20),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, (45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: CustomElevatedButton(
                        text: "Get Price Details on Whatsapp",
                        margin:  EdgeInsets.only(left: 15, right: 21),
                        leftIcon: Container(
                            margin:  EdgeInsets.only(right: 8),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgLogoswhatsappicon,
                                height: (18),
                                width: (18))),
                        buttonStyle:
                            CustomButtonStyles.outlineBlack900.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              double.maxFinite,
                              (36),
                            ),
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.bodySmall12_2),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 17, right: 18),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:  EdgeInsets.only(
                              left: 16, top: 11, right: 16, bottom: 11),
                          decoration: AppDecoration.fill2.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(bottom: 3),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("EMI  ₹11,000/month",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 8),
                                          child: Text("EMI Calculator",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodySmallBlueA700),
                                        ),
                                      ]),
                                ),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage58,
                                    height: (20),
                                    width: (20),
                                    margin:  EdgeInsets.only(left: 8, bottom: 29)),
                                CustomOutlinedButton(
                                    text: "Get EMI Offers",
                                    margin:
                                         EdgeInsets.only(left: 41, top: 7, bottom: 11),
                                    buttonStyle: CustomButtonStyles
                                        .outlineGreenA700
                                        .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(
                                        Size(
                                          (115),
                                          (31),
                                        ),
                                      ),
                                    ),
                                    buttonTextStyle:
                                        CustomTextStyles.bodySmallGreenA70012),
                              ]),
                        ),
                      ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 17, right: 18),
                  child: Container(
                    margin:  EdgeInsets.only(top: 34),
                    padding:  EdgeInsets.only(top: 14, bottom: 14),
                    decoration: AppDecoration.fill2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup50x50,
                              height: (50),
                              width: (50),
                              margin:  EdgeInsets.only(top: 3, bottom: 13)),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Need a Car Loan?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlack900_1),
                                  Padding(
                                    padding:  EdgeInsets.only(top: 12),
                                    child: Text(
                                        "Apply to get Instant Pre-qualified Offers",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            CustomTextStyles.bodySmallBlueA700),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: AppDecoration.outline5.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 15, top: 20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMaskgroup1,
                                  height: (40),
                                  width: (40)),
                              Padding(
                                padding:
                                     EdgeInsets.only(left: 17, top: 10, bottom: 9),
                                child: Text("Exclusive Offers",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1),
                              ),
                            ]),
                          ),
                          Padding(
                              padding:  EdgeInsets.only(left: 20, top: 18),
                              child: Text(
                                  "Benefits of Authorised Buying Experience",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyMediumGray800)),
                          Padding(
                            padding:  EdgeInsets.only(left: 20, top: 20),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage64,
                                  height: (18),
                                  width: (26),
                                  margin:  EdgeInsets.only(bottom: 2)),
                              Padding(
                                  padding:  EdgeInsets.only(left: 16, bottom: 2),
                                  child: Text("Doorstep Demo",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodySmall12_2)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage65,
                                  height: (20),
                                  width: (20),
                                  margin:  EdgeInsets.only(left: 37)),
                              Padding(
                                padding:  EdgeInsets.only( left: 12, bottom: 2),
                                child: Text("Offers & Discounts",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_2),
                              ),
                            ]),
                          ),
                          Padding(
                              padding:  EdgeInsets.only(left: 22 ,top: 18),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage66,
                                    height: (20),
                                    width: (20)),
                                Padding(
                                    padding:  EdgeInsets.only(left: 19, top: 2),
                                    child: Text("Lowest EMI",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2)),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage67,
                                    height: (20),
                                    width: (20)),
                                Padding(
                                    padding:  EdgeInsets.only(
                                         left: 12, bottom: 2 ,right: 32),
                                    child: Text("Exchange Benefits",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles.bodySmall12_2))
                              ])),
                          Container(
                            height: (45),
                            width: (315),
                            margin:  EdgeInsets.only(top: 24, bottom: 64, left: 20),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: (45),
                                  width: (314),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        (4)),
                                    border: Border.all(
                                      color: appTheme.blueA700,
                                      width: (1),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Get the Best deals",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleSmallBlueA700_1))
                            ]),
                          ),
                          Container(
                            // width: (374),
                            padding:  EdgeInsets.only(top: 12 ,bottom: 50),
                            decoration: AppDecoration.fill2.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding:  EdgeInsets.only(left: 22),
                                      child: Text(
                                          "To avail these offers, benefits please contact, ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodySmallGray80012)),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 19, top: 12),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPngegg1,
                                          height: (27),
                                          width: (29)),
                                      Padding(
                                        padding:  EdgeInsets.only(left: 13, top: 6),
                                        child: Text("Maruti Suzuki",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskgroup20x20,
                                              height: (20),
                                              width: (20)),
                                          Padding(
                                            padding:
                                                 EdgeInsets.only(left: 17, bottom: 2),
                                            child: Text("H-5, Sector 63, Noida",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .bodySmallGray80012),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskgroup2,
                                              height: (20),
                                              width: (20)),
                                          Padding(
                                            padding:  EdgeInsets.only(
                                                left: 17, top: 1, bottom: 1),
                                            child: Text("Call Now",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .labelLargeBlueA700_1),
                                          ),
                                        ]),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ),
                Padding(
                    padding:  EdgeInsets.only(
                      right: 38,
                      top: 55,
                    ),
                    child: Text("Alto K10 Price In Cities Near Noida",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge)),
                Container(
                    width: double.maxFinite,
                    margin:  EdgeInsets.only(top: 19),
                    padding:  EdgeInsets.only(left: 19, top: 5, right: 19, bottom: 5),
                    decoration: AppDecoration.fill,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding:  EdgeInsets.only(top: 1),
                              child: Text("City",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          Padding(
                              padding:  EdgeInsets.only(right: 56, bottom: 2),
                              child: Text("On-Road Price",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold))
                        ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("New Delhi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: (1),
                    width: double.maxFinite,
                    margin:  EdgeInsets.only(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: (1),
                                  thickness: (1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Gaziabad",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: (1),
                    width: double.maxFinite,
                    margin:  EdgeInsets.only(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: (1),
                                  thickness: (1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jaipur",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles
                                      .titleSmallBlueA700SemiBold),
                              Text("₹6.96 Lakh onwards",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1)
                            ]))),
                Container(
                    height: (1),
                    width: double.maxFinite,
                    margin:  EdgeInsets.only(top: 17),
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                  height: (1),
                                  thickness: (1),
                                  color: appTheme.gray800))),
                    ])),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 19, top: 18, right: 21),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lucknow",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.titleSmallBlueA700SemiBold),
                          Text("₹6.96 Lakh onwards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1)
                        ]),
                  ),
                ),
                Container(
                  height: (1),
                  width: double.maxFinite,
                  margin:  EdgeInsets.only(top: 17),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                            height: (1),
                            thickness: (1),
                            color: appTheme.gray800),
                      ),
                    ),
                  ]),
                ),
                CustomOutlinedButton(
                    text: "View More Cities",
                    margin:  EdgeInsets.only(left: 16, top: 20, right: 21),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, (45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                    alignment: Alignment.center),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Column(children: [
                      Container(
                        width: double.infinity,
                        decoration: AppDecoration.fill2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Text("Alto K10 Waiting Period",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: (172),
                                padding:
                                     EdgeInsets.only(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("EX 1.2 MT",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: (166),
                              padding:
                                   EdgeInsets.only(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("12-16 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: (172),
                                padding:
                                 EdgeInsets.only(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("EX 1.2 MT",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: (166),
                              padding:
                               EdgeInsets.only(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("12-16 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: (172),
                                padding:
                                 EdgeInsets.only(top: 16, bottom: 16, left: 20),
                                decoration: AppDecoration.txtOutline1,
                                child: Text("EX 1.2 MT",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    CustomTextStyles.bodySmallGray80012)),
                            Container(
                              width: (166),
                              padding:
                               EdgeInsets.only(top: 16, bottom: 16, left: 20),
                              decoration: AppDecoration.txtOutline1,
                              child: Text("12-16 Weeks",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallGray80012),
                            ),
                          ]),
                    ]),
                  ),
                ),
                CustomOutlinedButton(
                    text: "View More",
                    margin:  EdgeInsets.only(left: 16, top: 20, right: 21),
                    buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, (45)))),
                    buttonTextStyle: CustomTextStyles.titleSmallBlueA700_1,
                    alignment: Alignment.center),
                Padding(
                  padding:  EdgeInsets.only(
                    right: 158,
                    top: 55,
                    bottom: 10,
                  ),
                  child: Text("Alto K10 Fuel Cost",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 18, top: 16),
                    child: Text("VERSION*",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("STD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 18, top: 16),
                    child: Text("FEUL PRICE PER LITRE",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("STD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 18, top: 16),
                    child: Text("KM DRIVEN PER MONTH",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmallGray800_1),
                  ),
                ),
                CustomImageView(
                    imagePath: ImageConstant.imgComponent2,
                    height: (24),
                    width: (353),
                    margin:  EdgeInsets.only(top: 17)),
                Padding(
                    padding:  EdgeInsets.only(left: 18, top: 3, right: 18),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("4567",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                          Text("KM",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 17, right: 18, bottom: 30),
                  child: Container(
                    margin:  EdgeInsets.only(top: 34),
                    padding:  EdgeInsets.only(top: 14, bottom: 14),
                    decoration: AppDecoration.fill2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Monthly Fuel Cost Alto K10 is :",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallBlack900_1),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: Row(
                                      children: [
                                        Text("₹6,500",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallBlack900_1),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage58,
                                          height: (20),
                                          width: (20),
                                          alignment: Alignment.centerLeft,
                                          margin:  EdgeInsets.only(
                                            left: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage72,
                              height: (50),
                              width: (50),
                              margin:  EdgeInsets.only(top: 3, bottom: 13)),
                        ]),
                  ),
                ),
                Container(
                  height: 70,
                  decoration: AppDecoration.fill2
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                  child: Row(
                    children: [
                      CustomOutlinedButton(
                        text: "Get New Offers",
                        margin:  EdgeInsets.only(left: 41, top: 7, bottom: 11),
                        buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              (135),
                              (41),
                            ),
                          ),
                        ),
                        buttonTextStyle: TextStyle(
                          color: Colors.white,
                          // Set the text color to white
                          fontSize:
                              12 // You might need to adjust this according to your style
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                      height: (
                                        32
                                      ),
                                      title: Padding(
                                        padding:  EdgeInsets.only(
                                           left: 32,
                                        ),
                                        child: Text(
                                          "Fill your Details",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .labelLargeBlack900SemiBold,
                                        ),
                                      ),
                                      actions: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: AppbarImage(
                                            height: (
                                              15
                                            ),
                                            width: (
                                              15
                                            ),
                                            imagePath: ImageConstant.imgImage70,
                                            margin:  EdgeInsets.only(
                                              left: 21,
                                              right: 21,
                                              bottom: 17,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    CustomTextFormField(
                                      // controller: nameController,
                                      margin:  EdgeInsets.only(
                                         left: 32,
                                        top: 17,
                                        right: 28,
                                      ),
                                      contentPadding:  EdgeInsets.only(
                                         left: 12,
                                        top: 9,
                                    right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Name",
                                      hintStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      enabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      focusedBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      disabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                    ),
                                    CustomTextFormField(
                                      // controller: mobilenumberController,
                                      margin:  EdgeInsets.only(
                                         left: 32,
                                        top: 15,
                                        right: 28,
                                      ),
                                      contentPadding:  EdgeInsets.only(
                                         left: 12,
                                        top: 9,
                                    right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Mobile Number",
                                      hintStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      textInputType: TextInputType.phone,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      enabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      focusedBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      disabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                    ),
                                    CustomOutlinedButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      text: "SUBMIT",
                                      margin:  EdgeInsets.only(
                                        left: 33,
                                        top: 2,
                                        right: 27,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .outlinePrimary
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        double.maxFinite,
                                        (
                                          45
                                        ),
                                      ))),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallPrimary,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding:  EdgeInsets.only(
                                          top: 19,
                                          bottom: 29,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "< Go Back ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .titleSmallGreenA700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      CustomOutlinedButton(
                        text: "Contact Dealer",
                        margin:  EdgeInsets.only(left: 41, top: 7, bottom: 11),
                        buttonStyle:
                            CustomButtonStyles.outlineGreenA700.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                              (135),
                              (41),
                            ),
                          ),
                        ),
                        buttonTextStyle: CustomTextStyles.bodySmallGreenA70012,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: CustomAppBar(
                                        height: (
                                          32
                                        ),
                                        title: Padding(
                                          padding:  EdgeInsets.only(
                                             left: 32,
                                          ),
                                          child: Text(
                                            "Fill your Details",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .labelLargeBlack900SemiBold,
                                          ),
                                        ),
                                        actions: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: AppbarImage(
                                              height: (
                                                15
                                              ),
                                              width: (
                                                15
                                              ),
                                              imagePath:
                                                  ImageConstant.imgImage70,
                                              margin:  EdgeInsets.only(
                                                left: 21,
                                                right: 21,
                                                bottom: 17,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomTextFormField(
                                      // controller: nameController,
                                      margin:  EdgeInsets.only(
                                         left: 32,
                                        top: 17,
                                        right: 28,
                                      ),
                                      contentPadding:  EdgeInsets.only(
                                         left: 12,
                                        top: 9,
                                    right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Name",
                                      hintStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      enabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      focusedBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      disabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                    ),
                                    CustomTextFormField(
                                      // controller: mobilenumberController,
                                      margin:  EdgeInsets.only(
                                         left: 32,
                                        top: 15,
                                        right: 28,
                                      ),
                                      contentPadding:  EdgeInsets.only(
                                         left: 12,
                                        top: 9,
                                    right: 12,
                                        bottom: 9,
                                      ),
                                      textStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      hintText: "Enter your Mobile Number",
                                      hintStyle:
                                          CustomTextStyles.bodySmallGray80012,
                                      textInputType: TextInputType.phone,
                                      filled: true,
                                      fillColor: appTheme.blueGray100,
                                      defaultBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      enabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      focusedBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                      disabledBorderDecoration:
                                          TextFormFieldStyleHelper
                                              .outlineGray800TL4,
                                    ),
                                    CustomOutlinedButton(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      text: "SUBMIT",
                                      margin:  EdgeInsets.only(
                                        left: 33,
                                        top: 2,
                                        right: 27,
                                      ),
                                      buttonStyle: CustomButtonStyles
                                          .outlinePrimary
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(
                                        double.maxFinite,
                                        (
                                          45
                                        ),
                                      ))),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallPrimary,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(
                                        top: 19,
                                        bottom: 29,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "< Go Back ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .titleSmallGreenA700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    ),
  );
}

