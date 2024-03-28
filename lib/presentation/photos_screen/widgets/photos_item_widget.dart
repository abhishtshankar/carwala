import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../car_detail_page_screen/car_detail_page_screen.dart';
import '../../car_detail_page_screen/full_image_screen.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  const PhotosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
            PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
          return FullScreenImage(imagePath: ImageConstant.imgRectangle85);
        }));
      },
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle85,
        height: (
          105
        ),
        width: (
          171
        ),
      ),
    );
  }
}
