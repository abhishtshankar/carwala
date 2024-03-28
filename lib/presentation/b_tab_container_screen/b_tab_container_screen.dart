import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/b_page/b_page.dart';
import 'package:carwalee/presentation/m_page/m_page.dart';
import 'package:carwalee/presentation/x_page/x_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_search_view.dart';

class BTabContainerScreen extends StatefulWidget {
  const BTabContainerScreen({Key? key}) : super(key: key);

  @override
  BTabContainerScreenState createState() => BTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class BTabContainerScreenState extends State<BTabContainerScreen>
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
            height: (48),
            leadingWidth: 40,
            leading: AppbarImage(
                height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                onTap: () {
                  onTapArrowleft25(context);
                }),
            title:
                AppbarSubtitle3(text: "Compare", margin:  EdgeInsets.only(left: 16))),
        body: SizedBox(
        
          child: SingleChildScrollView(
            padding:  EdgeInsets.only(top: 14),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding:  EdgeInsets.only(left: 16),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    onTap: () {
                      _showPopup(context); // Function to show the popup
                    },
                    child: Container(
                      decoration: AppDecoration.outline12,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle119,
                                height: (113),
                                width: (179)),
                            Padding(
                                padding:  EdgeInsets.only(left: 8, top: 8),
                                child: Text("Aston Martin",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900_1)),
                            Padding(
                              padding:  EdgeInsets.only(left: 8, top:4 ,bottom: 8),
                              child: Text("Rs. 3.79 Cr",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.titleSmallBlack900_1),
                            ),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _showPopup(context); // Function to show the popup
                    },
                    child: Container(
                      decoration: AppDecoration.outline12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle120,
                            height: (113),
                            width: (179),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 8, top: 8),
                            child: Text(
                              "BMW",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 8, top: 3, bottom: 8),
                            child: Text(
                              "Rs. 3.79 Cr",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallBlack900_1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  // GestureDetector(
                  //   onTap: () {
                  //     onTapColumnrectangle(context);
                  //   },
                  //   child: Container(
                  //     decoration: AppDecoration.outline12
                  //     child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         children: [
                  //           CustomImageView(
                  //               imagePath: ImageConstant.imgRectangle120,
                  //               height: (113),
                  //               width: (179)),
                  //           Padding(
                  //               padding:  EdgeInsets.only(left: 8, top: 8),
                  //               child: Text("BMW",
                  //                   overflow: TextOverflow.ellipsis,
                  //                   textAlign: TextAlign.left,
                  //                   style:
                  //                       CustomTextStyles.titleSmallBlack900_1)),
                  //           Padding(
                  //             padding:  EdgeInsets.only(left: 8, top: 3, bottom: 8),
                  //             child: Text("Rs. 3.79 Cr",
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: CustomTextStyles.titleSmallBlack900_1),
                  //           ),
                  //         ]),
                  //   ),
                  // ),
                ]),
              ),
              Container(
                  height: (36),
                  width: double.maxFinite,
                  margin:  EdgeInsets.only(top: 18),
                  child: TabBar(
                      controller: tabviewController,
                      labelColor: appTheme.greenA40001,
                      labelStyle: TextStyle(),
                      unselectedLabelColor: appTheme.black900,
                      unselectedLabelStyle: TextStyle(),
                      indicatorColor: appTheme.greenA40001,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                            child: Text("Specification",
                                overflow: TextOverflow.ellipsis)),
                        Tab(
                            child: Text("Features",
                                overflow: TextOverflow.ellipsis)),
                        Tab(
                            child:
                                Text("Colors", overflow: TextOverflow.ellipsis))
                      ])),
              SizedBox(
                height: (1774),
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    BPage(),
                    XPage(),
                    MPage(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }

  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfourScreen);
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      TextEditingController searchController = TextEditingController();
      List<String> carBrands = [
        "Aston Martin",
        "Audi",
        "Bentley",
        "BMW",
        "BYD",
        "Chevrolet",
        "Citroen",
        "Datsun",
        "Ferrari",
        "Force Motors",
        "Honda",
        "Hyundai",
        "Isuzu",
        "Jaguar",
      ]; // Example list of car brands
      return AlertDialog(
        title: Card(
          shadowColor: Colors.grey,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Brand',
                  style: theme.textTheme.titleLarge!,
                ),
                IconButton(
                  icon: Icon(Icons.cancel_outlined),
                  color: Colors.black87,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
        content: SizedBox(
          width: (558),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            CustomSearchView(
              margin:  EdgeInsets.only(left: 16, top: 20, right: 16),
              controller: searchController,
              hintText: "What you are looking for ?",
              hintStyle: CustomTextStyles.bodyMediumBlack900,
              textStyle: CustomTextStyles.bodyMediumBlack900,
              suffix: Container(
                  margin:  EdgeInsets.only(left: 30, top: 10, right: 16, bottom: 10),
                  child:
                      CustomImageView(svgPath: ImageConstant.imgSearchGray800)),
              suffixConstraints: BoxConstraints(maxHeight: (40)),
              contentPadding:  EdgeInsets.only(left: 16, top: 7, bottom: 7),
            ),
            SizedBox(height: 10), // Add some spacing
            Expanded(
              child: ListView.separated(
                itemCount: carBrands.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey,
                    thickness: 2
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      carBrands[index],
                      style: theme.textTheme.titleSmall!,
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      );
    },
  );
}

onTapSelectbrand(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.compareNavbarScreen);
}
