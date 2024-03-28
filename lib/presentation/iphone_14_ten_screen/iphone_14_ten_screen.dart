import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14TenScreen extends StatelessWidget {
  const Iphone14TenScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(height: (48),
            leadingWidth: 40,
            leading: AppbarImage(height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 16, top: 12, bottom: 12),
                onTap: () {
                  onTapArrowleft46(context);
                }),
            title: AppbarSubtitle3(
                text: "FInd New Cars", margin: EdgeInsets.only(left: 16))),
        body: Padding(padding: EdgeInsets.only(top: 28, bottom: 28),
            child: Text("What’s Your budget?", overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMedium18))));
  }


  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft46(BuildContext context) {
    Navigator.pop(context);
  }
}
