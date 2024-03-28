import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashOneScreen> createState() => _SplashOneScreenState();
}

class _SplashOneScreenState extends State<SplashOneScreen> {
  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding:  EdgeInsets.only(
            left: 16,
            top: 47,
            right: 16,
            bottom: 47,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPngtreecarsel,
                height: (
                  320
                ),
                width: (
                  320
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: (
               9
                ),
                width: (
                  85
                ),
                margin:  EdgeInsets.only(
                  top: 24,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: 47,
                ),
                child: Text(
                  "Buy car @ right price",
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
                  onTapNext(context);
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

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashTwoScreen);
  }
}
