import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewframesiItemWidget extends StatelessWidget {
  const ChipviewframesiItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding:  EdgeInsets.only(
          left: 18,
          right: 18,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Petrol",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: appTheme.black900.withOpacity(0.53),
            fontSize: (
              12
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.black900.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray800,
            width: (
           1
            ),
          ),
          borderRadius: BorderRadius.circular(
            (
              2
            ),
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
