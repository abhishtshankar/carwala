import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListextendedwarItemWidget extends StatelessWidget {
  const ListextendedwarItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(
        left: 5,
        top: 10,
        right: 5,
        bottom: 10,
      ),
      decoration: AppDecoration.fill2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      width: (
        167
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskgroup14,
                height: (
                  20
                ),
                width: (
                  20
                ),
                margin:  EdgeInsets.only(
                  top: 2,
                  bottom: 16,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  left: 9,
                ),
                child: Text(
                  "EXTENDED \nWARRANTY ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(
              left:4,
              top: 13,
              bottom: 13,
            ),
            child: Text(
              "10 month additional warranty coverage is available",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
