import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle33ItemWidget extends StatelessWidget {
  const Listrectangle33ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (75),
      width: (107),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle336,
            height: (75),
            width: (107),
            radius: BorderRadius.circular(
              (7),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMaskgroup29x29,
            height: (29),
            width: (29),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 8,
              right: 6,
            ),
          ),
        ],
      ),
    );
  }
}
