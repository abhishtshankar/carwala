import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listcurrency4ItemWidget extends StatelessWidget {
  Listcurrency4ItemWidget({
    Key? key,
    this.onTapColumnmodel,
    this.onTapTxtComparison,
    this.onTapViewprice,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnmodel;

  VoidCallback? onTapTxtComparison;

  VoidCallback? onTapViewprice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
        left: 9,
        right: 9,
      ),
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      width: (
        155
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: (
              131
            ),
            width: (
              136
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Rs.",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: (
                      131
                    ),
                    width: (
                      136
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              left: 24,
                            ),
                            child: Text(
                              "4.57 Lakh",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              onTapColumnmodel?.call();
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMarutialto1667634241,
                                  height: (
                                    83
                                  ),
                                  width: (
                                    133
                                  ),
                                  margin:  EdgeInsets.only(
                                    left: 3,
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(
                                    top: 6,
                                  ),
                                  child: Text(
                                    "Hyundai Santro 2023",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmall12_1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                      top: 6,
                                      right: 1,
                                    ),
                                    child: Text(
                                      "Onwards",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmall9,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              onTapTxtComparison?.call();
            },
            child: Padding(
              padding:  EdgeInsets.only(
                top: 9,
              ),
              child: Text(
                "Compare with Alto K10",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.labelSmall,
              ),
            ),
          ),
          CustomOutlinedButton(
            text: "View Price Breakup",
            margin:  EdgeInsets.only(
              left: 1,
              top: 14,
              bottom: 14,
            ),
            buttonStyle: CustomButtonStyles.outlineBlueA700.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(Size(
              (
                135
              ),
              (
                22
              ),
            ))),
            buttonTextStyle: theme.textTheme.labelSmall!,
            onTap: () {
              onTapViewprice?.call();
            },
          ),
        ],
      ),
    );
  }
}
