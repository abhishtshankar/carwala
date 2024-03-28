import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List3ItemWidget extends StatelessWidget {
  const List3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (
        245
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle8,
              height: (
                119
              ),
              width: (
                245
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  (
                   4
                  ),
                ),
                topRight: Radius.circular(
                  (
                   4
                  ),
                ),
              ),
            ),
            Container(
              width: (
                245
              ),
              padding:  EdgeInsets.only(
                left: 11,
                top: 7,
                right: 11,
                bottom: 7,
              ),
              decoration: AppDecoration.outline1.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                      top: 1,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Top",
                            style: CustomTextStyles.titleSmallBlack900_2
                          ),
                          TextSpan(
                            text: " Popular ",
                            style: CustomTextStyles.titleSmallBlack900_2
                          ),
                          TextSpan(
                            text: "SUV’s",
                            style: CustomTextStyles.titleSmallBlack900_2
                          ),
                          TextSpan(
                            text: " in India",
                            style: CustomTextStyles.titleSmallBlack900_2
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top:4
                    ),
                    child: Text(
                      "Mahindra Thar, Mahindra Scorpio N",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
