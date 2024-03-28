import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../used_car_page_screen/widgets/listrectangle33_item_widget.dart';

// ignore_for_file: must_be_immutable
class UsedCarPageScreen extends StatelessWidget {
  UsedCarPageScreen({Key? key}) : super(key: key);

  TextEditingController group493Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          height: (41),
          leadingWidth: 41,
          leading: Container(
              height: (24),
              width: (25),
              margin:  EdgeInsets.only(
                left: 16,
              ),
              child: AppbarImage(
                  height: (24),
                  width: (24),
                  svgPath: ImageConstant.imgArrowleft,
                  margin:  EdgeInsets.only(right: 1),
                  onTap: () {
                    onTapArrowleft28(context);
                  })),
          title: Padding(
              padding:  EdgeInsets.only(left: 15),
              child: AppbarSubtitle3(
                  text: "Alto K10", margin:  EdgeInsets.only(right: 16))),
          actions: [
            AppbarImage(
              height: (24),
              width: (24),
              svgPath: ImageConstant.imgFavorite,
              // margin:  EdgeInsets.only(left: 19, top: 5, right: 12)
            ),
            AppbarImage(
                height: (24),
                width: (24),
                svgPath: ImageConstant.imgBasilshareoutline,
                margin:  EdgeInsets.only(left: 9, right: 21))
          ]),
      body: SizedBox(
      
        child: SingleChildScrollView(
          padding:  EdgeInsets.only(top: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: (228),
              width: double.maxFinite,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: (53),
                        width: double.maxFinite,
                        margin:  EdgeInsets.only(bottom: 43),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius:
                                BorderRadius.circular((16))))),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: (228),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle119113x179,
                          height: (228),
                          width: (390),
                          alignment: Alignment.center),
                      CustomTextFormField(
                          width: (156),
                          controller: group493Controller,
                          margin:  EdgeInsets.only(bottom: 21),
                          contentPadding:
                               EdgeInsets.only(left: 24, top: 12 ,bottom: 12),
                          textStyle: CustomTextStyles.labelLargePrimary,
                          hintText: "Tap to View",
                          hintStyle: CustomTextStyles.labelLargePrimary,
                          alignment: Alignment.bottomCenter,
                          suffix: Container(
                              margin:  EdgeInsets.only(
                                  left: 10, top: 7, right: 23, bottom: 8),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup13,
                                  height: (28),
                                  width: (28))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: (43)),
                          filled: true,
                          fillColor: appTheme.black900.withOpacity(0.8),
                          defaultBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          enabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          focusedBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900,
                          disabledBorderDecoration:
                              TextFormFieldStyleHelper.fillBlack900),
                    ]),
                  ),
                ),
              ]),
            ),
            SizedBox(
                height: (95),
                child: ListView.separated(
                    padding:  EdgeInsets.only(left: 20, top: 20, right: 22),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: (14));
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Listrectangle33ItemWidget();
                    })),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 20, top: 27, right: 34),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Maruti Suzuki Alto K10",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLargeBlack900),
                      Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage101,
                            height: (24),
                            width: (24),
                            margin:  EdgeInsets.only(bottom: 5),
                          ),
                          Text("Know more",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelMediumGray80010_1),
                        ],
                      ),
                    ]),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(left: 20, top: 1),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("23K km",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleSmall),
                      Container(
                          height: (4),
                          width: (4),
                          margin:  EdgeInsets.only( left: 12, top: 19, bottom: 8),
                          decoration: BoxDecoration(
                              color: appTheme.gray800,
                              borderRadius:
                                  BorderRadius.circular((2)))),
                      Padding(
                          padding:  EdgeInsets.only(left: 13, top: 11),
                          child: Text("Petrol",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Container(
                          height: (4),
                          width: (4),
                          margin:  EdgeInsets.only(left: 14, top: 19, bottom: 8),
                          decoration: BoxDecoration(
                              color: appTheme.gray800,
                              borderRadius:
                                  BorderRadius.circular((2)))),
                      Padding(
                          padding:  EdgeInsets.only(left: 14, top: 11),
                          child: Text("Automatic",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      Spacer(),
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding:  EdgeInsets.only(left: 20, top: 19),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage102,
                          height: (20),
                          width: (20)),
                      Padding(
                          padding:  EdgeInsets.only(left: 16),
                          child: Text("Home Test Drive : Available",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall))
                    ]))),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding:  EdgeInsets.only(left: 20, top: 19),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskgroup20x20,
                          height: (20),
                          width: (20),
                          margin:  EdgeInsets.only(bottom: 1)),
                      Padding(
                          padding:  EdgeInsets.only(left: 16),
                          child: Text("H-5, Sector 3, Gurgoan",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall))
                    ]))),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                color: Color(0x3300C070),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 15, right: 15.0),
                  child: Text(
                    "   40+ cars available for test drive at this hub   ",
                    style: TextStyle(
                        color: Color(0xFF00C070), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
                padding:  EdgeInsets.only(left: 20, top: 27),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("₹ 15.75 Lakhs",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleLargeBlack900),
                      Spacer(),
                      Padding(
                          padding:  EdgeInsets.only(
                            bottom: 8,
                          ),
                          child: Text("₹28,668/m",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleSmall)),
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskgroup13x13,
                          height: (13),
                          width: (13),
                          margin:
                               EdgeInsets.only(left: 7, top: 3, right: 20, bottom: 13))
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding:  EdgeInsets.only(left: 21, top: 5),
                    child: Text("Get extended Warranty at ₹ 27,500",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:  EdgeInsets.only(
                      left: 5,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    decoration: AppDecoration.fill2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    width: (
                      167
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskgroup14,
                              height: (
                                20
                              ),
                              width: (
                                20
                              ),
                              margin:  EdgeInsets.only(
                                top: 2,
                                bottom: 16,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(
                                left: 9,
                              ),
                              child: Text(
                                "EXTENDED \nWARRANTY ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            left:4,
                            top: 13,
                            bottom: 13,
                          ),
                          child: Text(
                            "10 month additional warranty coverage is available",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:  EdgeInsets.only(
                      left: 5,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    decoration: AppDecoration.fill2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    width: (
                      167
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/dolo.JPG",
                              height: 25,
                              width: 25,
                            ),
                            Padding(
                                padding:  EdgeInsets.only(
                                  left: 9,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.0),
                                    children: [
                                      TextSpan(
                                        text: '5 DAY\n',
                                        style: CustomTextStyles
                                            .titleSmallGreenA700,
                                      ),
                                      TextSpan(
                                        text: 'WARRANTY',
                                        style:
                                            CustomTextStyles.titleSmallSemiBold,
                                      ),
                                    ],
                                  ),
                                )
                                // Text(
                                //   "EXTENDED \nWARRANTY ",
                                //   maxLines: 2
                                //   overflow: TextOverflow.ellipsis,
                                //   textAlign: TextAlign.left,

                                // ),
                                ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            left:4,
                            top: 13,
                            bottom: 13,
                          ),
                          child: Text(
                            "You won’t use it\n through as you will love our cars",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 20, top: 54, bottom: 20),
                child: Text("Car Overview",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleLarge),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage19,
                      height: (
                        30
                      ),
                      width: (
                        30
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Model Year",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 107.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Registry Year",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 108.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Fuel",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Petrol",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 109.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Km Driven",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "234\nkm",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 110.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Transmission",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Automatic",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 111.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "No. of Owners",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "2",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 112.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Insurance Type",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Comprehensive",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 113.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "RTO",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "DL3C",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 114.png",
                      height: 25,
                      width: 25,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        "Car Location",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumGray800Bold,
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "Gurgaon",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding:  EdgeInsets.only(left: 10, top: 50, bottom: 30),
                    child: Text("What we Offer?",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/image 115.png",
                      height: 100,
                      width: 100,
                    ),
                    Container(
                        width: (113),
                        margin:  EdgeInsets.only(bottom: 18),
                        child: Text("Comprehensive\nWarranty",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall)),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage116,
                        height: (85),
                        width: (85),
                        margin:  EdgeInsets.only(top: 9, bottom: 6)),
                    Container(
                        width: (73),
                        margin:  EdgeInsets.only(left: 31, bottom: 18),
                        child: Text("250 Points\nInspected",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall)),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage117,
                        height: (100),
                        width: (100),
                        margin:  EdgeInsets.only(left: 35, right: 15)),
                    Container(
                        width: (83),
                        margin:  EdgeInsets.only(left: 42 ,top: 1),
                        child: Text("5 Days\nMoneyback \nGuarantee",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.maxFinite,
        padding:  EdgeInsets.only(top: 7, bottom: 7),
        decoration: AppDecoration.fill,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomElevatedButton(
                    text: "BOOK NOW",
                    margin:  EdgeInsets.only(right: 11, bottom: 1),
                    buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, (45)))),
                    buttonTextStyle: CustomTextStyles.bodyMediumPrimary)),
            Expanded(
              child: CustomOutlinedButton(
                  text: "FREE TEST DRIVE",
                  margin:  EdgeInsets.only(left: 11, bottom: 1),
                  buttonStyle: CustomButtonStyles.outlineRedA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(
                        double.maxFinite,
                        (45),
                      ),
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.bodyMediumRedA700),
            ),
          ]),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft28(BuildContext context) {
    Navigator.pop(context);
  }
}
