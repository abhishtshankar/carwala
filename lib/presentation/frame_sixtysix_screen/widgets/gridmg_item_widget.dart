import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridmgItemWidget extends StatelessWidget {
  const GridmgItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(
      "",
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: theme.textTheme.labelMedium,
    );
  }
}
