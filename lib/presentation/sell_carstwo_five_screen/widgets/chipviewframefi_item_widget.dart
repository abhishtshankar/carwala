import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewframefiItemWidget extends StatelessWidget {
  const ChipviewframefiItemWidget({Key? key})
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
          left: 30,
          right: 30,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          " Maruti Suzuki",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: appTheme.gray800,
            fontSize: (
              14
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.gray800.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray800,
            width: (
           1
            ),
          ),
          borderRadius: BorderRadius.circular(
            (
              18
            ),
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
