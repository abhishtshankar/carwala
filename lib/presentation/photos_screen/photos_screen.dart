import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../photos_screen/widgets/photos_item_widget.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({Key? key}) : super(key: key);

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
                      onTapArrowleft27(context);
                    }),
                title: AppbarSubtitle3(
                    text: "Photos", margin:  EdgeInsets.only(left: 16))),
            body: Padding(
                padding:  EdgeInsets.only(left: 16, top: 2, right: 16),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: (106),
                        crossAxisCount: 2,
                        mainAxisSpacing: (16),
                        crossAxisSpacing: (16)),
                    physics: BouncingScrollPhysics(),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return PhotosItemWidget();
                    }))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft27(BuildContext context) {
    Navigator.pop(context);
  }
}
