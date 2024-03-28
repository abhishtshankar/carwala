import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashThreeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding:  EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPricetag51684364323754,
                height: (
                  220
                ),
                width: (
                  220
                ),
              ),
              Container(
                height: (
               9
                ),
                margin:  EdgeInsets.only(
                  top: 86,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing:4,
                    activeDotColor: appTheme.redA700,
                    dotColor: appTheme.blueGray100,
                    dotHeight: (
                   9
                    ),
                    dotWidth: (
                   9
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: 47,
                ),
                child: Text(
                  "Get the best price on car",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleLargeBlack900Bold,
                ),
              ),
              Container(
                width: (
                  308
                ),
                margin:  EdgeInsets.only(
                  left: 24,
                  top: 22,
                  right: 24,
                ),
                child: Text(
                  "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallBlack900_1,
                ),
              ),
              CustomElevatedButton(
                        onTap: (){
                          onTapLogin(context);
                        },
                text: "Skip",
                margin:  EdgeInsets.only(
                  top: 97,
                  bottom: 5,
                ),
                buttonStyle: CustomButtonStyles.fillRedA700TL18.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  (
                  80
                  ),
                  (
                    37
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}
