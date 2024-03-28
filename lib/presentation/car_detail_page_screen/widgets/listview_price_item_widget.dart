import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListviewPriceItemWidget extends StatelessWidget {
  ListviewPriceItemWidget({
    Key? key,
    this.onTapViewprice,
  }) : super(
          key: key,
        );

  VoidCallback? onTapViewprice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (
        135
      ),
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomOutlinedButton(
          text: "View Price Breakup",
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
      ),
    );
  }
}
