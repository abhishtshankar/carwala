import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImagesItemWidget extends StatelessWidget {
  ImagesItemWidget({
    Key? key,
    this.onTapColumnrectangle,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(
        decoration: AppDecoration.outline3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder7,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle756,
              height: (
                165
              ),
              width: (
                358
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  (
                    8
                  ),
                ),
                topRight: Radius.circular(
                  (
                    8
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                left: 6,
                top: 19,
              ),
              child: Text(
                "Mahindra Thar’s Da Out in the City",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:  EdgeInsets.only(
                  left: 6,
                  top: 17,
                  right: 13,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jan 23, 2023",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2
                    ),
                    Text(
                      "VIEW IMAGES >",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.labelMediumBlueA70010,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
