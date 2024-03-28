import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_icon_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding:  EdgeInsets.only(
              left: 16,
              top: 10,
              right: 16,
              bottom: 10,
            ),
            decoration: AppDecoration.fill1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      right:4
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                          ),
                          child: Text(
                            "Confirm your city",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        CustomIconButton(
                          height: 30,
                          width: 30,
                          margin:  EdgeInsets.only(
                            left: 75,
                            bottom: 1,
                          ),
                          padding:  EdgeInsets.all(
                             5,
                          ),
                          decoration: IconButtonStyleHelper.outlineBlack900,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgRadixiconscross2
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(
                    top: 7,
                  ),
                  child: Text(
                    "This is necessary to personalize result for you  ",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodySmall12_2
                  ),
                ),
                Container(
                  width: (
                    358
                  ),
                  margin:  EdgeInsets.only(
                    top: 19,
                  ),
                  padding:  EdgeInsets.only(
                    left: 8,
                    top:4,
                    right: 8,
                    bottom:4
                  ),
                  decoration: AppDecoration.outline12.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder3,
                  ),
                  child: CustomElevatedButton(
                    text: "Noida",
                    rightIcon: Container(
                      margin:  EdgeInsets.only(
                        left: 10,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgRadixiconscross2
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillBluegray100.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(Size(
                      (
                        72
                      ),
                      (
                      24
                      ),
                    ))),
                    buttonTextStyle: theme.textTheme.bodySmall!,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      top: 9,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgIcoutlinemylocation,
                          height: (
                            16
                          ),
                          width: (
                            16
                          ),
                          margin:  EdgeInsets.only(
                            top: 1,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            left: 7,
                          ),
                          child: Text(
                            "Detect my location",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallBlueA700.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  text: "Confirm",
                  margin:  EdgeInsets.only(
                    top: 12,
                    bottom: 1,
                  ),
                  buttonStyle: CustomButtonStyles.outlineLightgreen900.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(Size(
                    (
                      121
                    ),
                    (
                      34
                    ),
                  ))),
                  buttonTextStyle: CustomTextStyles.bodySmallLightgreen900,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
