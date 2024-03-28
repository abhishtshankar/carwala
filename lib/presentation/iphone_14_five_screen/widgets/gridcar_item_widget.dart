import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridcarItemWidget extends StatelessWidget {
  const GridcarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding:  EdgeInsets.only(
          left: 22,
          top: 2,
          right: 22,
          bottom: 21,
        ),
        decoration: AppDecoration.outline12.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgCarGray800,
              height: (
                12
              ),
              width: (
                35
              ),
              margin:  EdgeInsets.only(
                right: 1,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                top: 7,
                right: 5,
              ),
              child: Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.bodySmallGray80012
              ),
            ),
          ],
        ),
      ),
    );
  }
}
