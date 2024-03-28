import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class NItemWidget extends StatelessWidget {
  NItemWidget({
    Key? key,
    this.onTapViewcomparison,
  }) : super(
          key: key,
        );

  VoidCallback? onTapViewcomparison;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: (
              156
            ),
            width: (
              295
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle13,
                  height: (
                    152
                  ),
                  width: (
                    141
                  ),
                  radius: BorderRadius.circular(
                    (
                      8
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      right: 61,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.labelMedium,
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Rs. 5,85,000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.labelSmallOnPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle13143x141,
                  height: (
                    143
                  ),
                  width: (
                    141
                  ),
                  radius: BorderRadius.circular(
                    (
                      8
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.labelMediumBlack900,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Text(
                            "Rs. 54,77,823.73",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                CustomTextStyles.labelSmallOnPrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: (
                    31
                  ),
                  width: (
                    33
                  ),
                  alignment: Alignment.topCenter,
                  margin:  EdgeInsets.only(
                    top: 31,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              left: 47,
              top: 5,
            ),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: (
               1
                ),
                top: (
               1
                ),
                right: (
               1
                ),
                bottom: (
               1
                ),
              ),
              strokeWidth: (
             1
              ),
              gradient: LinearGradient(
                begin: Alignment(
                  0.5,
                  0,
                ),
                end: Alignment(
                  0.5,
               1
                ),
                colors: [
                  appTheme.redA700,
                  appTheme.redA700.withOpacity(0.83),
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(
                  8,
                ),
                topRight: Radius.circular(
                  8,
                ),
                bottomLeft: Radius.circular(
                  8,
                ),
                bottomRight: Radius.circular(
                  8,
                ),
              ),
              child: CustomOutlinedButton(
                text: "View Comparison",
                margin:  EdgeInsets.only(
                  left: 47,
                  top: 5,
                ),
                buttonStyle: CustomButtonStyles.outline.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  (
                    161
                  ),
                  (
                    33
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.labelLargeRedA700,
                onTap: () {
                  onTapViewcomparison?.call();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
