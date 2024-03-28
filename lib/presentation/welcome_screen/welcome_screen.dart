import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../onboarding_screen/onboarding_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    // Delay navigation after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      onTapSplash(context);
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: CustomElevatedButton(
          onTap: () {
            onTapSplash(context);
          },
          text: "Logo",
          buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
            fixedSize: MaterialStateProperty.all<Size>(
              Size(
                double.maxFinite,
                MediaQuery.of(context).size.height
              ),
            ),
          ),
          buttonTextStyle: CustomTextStyles.titleLargeInterBlack900,
        ),
      ),
    );
  }

  onTapSplash(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Onbording()));
  }
}
