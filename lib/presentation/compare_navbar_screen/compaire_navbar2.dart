import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_search_view.dart';
import '../compare_navbar_screen/widgets/compare_navbar_item_widget.dart';

// ignore_for_file: must_be_immutable
class CompareNavbarScreen2 extends StatelessWidget {
  CompareNavbarScreen2({Key? key}) : super(key: key);

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
                margin:  EdgeInsets.only(left: 16, top: 12, bottom: 12),
                onTap: () {
                 Navigator.pop(context);
                }),
            title:
                AppbarSubtitle3(text: "Compare", margin:  EdgeInsets.only(left: 16))),
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
                      InkWell(
                        onTap: () {
                          _showPopup(context); // Function to show the popup
                        },
                        child: Container(
                          padding:  EdgeInsets.only(
                              left: 57, top: 13, right: 57, bottom: 13),
                          decoration: AppDecoration.outline12,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 63,
                                    width: 64,
                                    padding:  EdgeInsets.all( 16),
                                    decoration:
                                    IconButtonStyleHelper.fillGray10001,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCarBlack900)),
                                Padding(
                                  padding:  EdgeInsets.only(top: 3, bottom: 65),
                                  child: Text("Select Car",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge),
                                ),
                              ]),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showPopup(context); // Function to show the popup
                        },
                        child: Container(
                          padding:  EdgeInsets.only(
                              left: 57, top: 13, right: 57, bottom: 13),
                          decoration: AppDecoration.outline12,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 63,
                                    width: 64,
                                    padding:  EdgeInsets.all( 16),
                                    decoration:
                                        IconButtonStyleHelper.fillGray10001,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCarBlack900)),
                                Padding(
                                  padding:  EdgeInsets.only(top: 3, bottom: 65),
                                  child: Text("Select Car",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.labelLarge),
                                ),
                              ]),
                        ),
                      ),
                    ]),
                    CustomElevatedButton(
                        text: "Compare Cars",
                        margin:  EdgeInsets.only(left: 7, top: 27, right: 6),
                        buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                            fixedSize: MaterialStateProperty.all<Size>(
                                Size(double.maxFinite, (45)))),
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary_1),
                    Padding(
                        padding:  EdgeInsets.only(left: 8, top: 42),
                        child: Text("Popular Car Comparisons",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleLarge)),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 23, top: 5, right: 7),
                        child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: (26));
                            },
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return CompareNavbarItemWidget(
                                  onTapViewcomparison: () {
                                onTapViewcomparison(context);
                              });
                            }),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapViewcomparison(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  onTapViewupcoming(BuildContext context) {
   Navigator.pop(context);
  }

  onTapColumncarone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfourScreen);
  }
}

onTapRowviewcomparis(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
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
