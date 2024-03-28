import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  const ListgroupItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        width: (
          19
        ),
        padding:  EdgeInsets.only(
          left: 6,
          top: 2,
          right: 6,
          bottom: 2
        ),
        decoration: AppDecoration.txtFill1.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder9,
        ),
        child: Text(
          "2",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: CustomTextStyles.labelMediumOutfitPrimary,
        ),
      ),
    );
  }
}
