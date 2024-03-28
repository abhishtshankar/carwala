import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../new_car_screen/widgets/listriheartline1_item_widget.dart';
import '../new_car_screen/widgets/listriheartline_item_widget.dart';

class NewCarScreen extends StatelessWidget {
  const NewCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
            height: (47),
            leadingWidth: 40,
            leading: AppbarImage(
                height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin:  EdgeInsets.only(left: 16, top: 11, bottom: 11),
                onTap: () {
                  onTapArrowleft4(context);
                }),
            title:
                AppbarSubtitle3(text: "New Cars", margin:  EdgeInsets.only(left: 4))),
        body: SizedBox(
        
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(bottom: 5),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding:  EdgeInsets.only(left: 16, right: 16),
                    child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: (13));
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ListriheartlineItemWidget(
                              onTapRowrectanglesix: () {
                            onTapRowrectanglesix(context);
                          });
                        })),
                Container(
                    margin:  EdgeInsets.only(top: 19),
                    padding:  EdgeInsets.only(left: 49, right: 49),
                    decoration: AppDecoration.fill,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgImage41,
                        height: (108),
                        width: (287))),
                Padding(
                  padding:  EdgeInsets.only(left: 16, top: 27, right: 16),
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: (13));
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Listriheartline1ItemWidget(onTapRow: () {
                          onTapRow(context);
                        });
                      }),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  onTapRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapRowrectanglesix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  // onTapArrowleft4(BuildContext context) {
  //   Navigator.pop(context);
  // }
}
