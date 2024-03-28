import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VideosItemWidget extends StatelessWidget {
  const VideosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: (
              173
            ),
            width: (
              358
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle75173x358,
                  height: (
                    173
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
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaskgroup60x60,
                  height: (
                    60
                  ),
                  width: (
                    60
                  ),
                  alignment: Alignment.bottomCenter,
                  margin:  EdgeInsets.only(
                    bottom: 49,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              left: 6,
              top: 10,
            ),
            child: Text(
              "Brand New Alto K10 - Launch ",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.titleSmallBlack900_1,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding:  EdgeInsets.only(
                left: 11,
                top: 18,
                right: 7,
                bottom: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                      top: 1,
                    ),
                    child: Text(
                      "13 Hours ago",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      bottom: 1,
                    ),
                    child: Text(
                      "1555 views",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallLight_2
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
