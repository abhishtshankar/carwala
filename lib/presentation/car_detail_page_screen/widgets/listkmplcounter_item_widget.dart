import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListkmplcounterItemWidget extends StatelessWidget {
  const ListkmplcounterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding:  EdgeInsets.only(
          left: 6,
          top: 11,
          right: 6,
          bottom: 11,
        ),
        decoration: AppDecoration.outline3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder3,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                left: 6,
                top: 11,
                bottom: 10,
              ),
              child: Text(
                "8.8 kmpl",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                left: 22
              ),
              child: SizedBox(
                height: (
                  43
                ),
                child: VerticalDivider(
                  width: (
                 1
                  ),
                  thickness: (
                 1
                  ),
                  color: appTheme.black900,
                  endIndent: (
                 1
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(
                left: 25,
                bottom: 2
              ),
              child: Text(
                "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgImage42,
              height: (
                33
              ),
              width: (
                46
              ),
              margin:  EdgeInsets.only(
                bottom: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
