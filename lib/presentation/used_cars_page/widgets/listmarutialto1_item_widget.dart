import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listmarutialto1ItemWidget extends StatelessWidget {
  const Listmarutialto1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fill1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      width: (
        186
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(
              bottom: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMarutialto1667634241122x186,
                  height: (
                    122
                  ),
                  width: (
                    186
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top: 5,
                  ),
                  child: Text(
                    "Maruti Suzuki Alto k10",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall12_1,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top:4
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Rs.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 5,
                        ),
                        child: Text(
                          "4.57 Lakh",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 5,
                          top: 2,
                          bottom: 2
                        ),
                        child: Text(
                          "Onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmall9,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top: 7,
                  ),
                  child: Text(
                    "Starting Price",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallBlueA7009,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              left: 11,
              bottom: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMarutialto1667634241122x186,
                  height: (
                    122
                  ),
                  width: (
                    186
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top: 5,
                  ),
                  child: Text(
                    "Maruti Suzuki Alto k10",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall12_1,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top:4
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Rs.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 5,
                        ),
                        child: Text(
                          "4.57 Lakh",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 5,
                          top: 2,
                          bottom: 2
                        ),
                        child: Text(
                          "Onwards",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodySmall9,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    left: 9,
                    top: 7,
                  ),
                  child: Text(
                    "Starting Price",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmallBlueA7009,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
