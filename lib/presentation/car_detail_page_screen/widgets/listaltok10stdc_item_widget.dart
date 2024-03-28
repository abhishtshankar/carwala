import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listaltok10stdcItemWidget extends StatelessWidget {
  const Listaltok10stdcItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding:  EdgeInsets.only(
          left: 1,
          bottom: 95,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Alto K10 Std  ",
                    style: CustomTextStyles.labelLargeBlack900SemiBold_1,
                  ),
                  TextSpan(
                    text: "( CLICK TO VIEW )",
                    style: CustomTextStyles.labelMediumBlueA700SemiBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "Rs. 8.04 Lakh",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.labelLargeBlueA700SemiBold,
            ),
          ],
        ),
      ),
    );
  }
}
