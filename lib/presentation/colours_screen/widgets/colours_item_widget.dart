import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColoursItemWidget extends StatelessWidget {
  const ColoursItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (
        33
      ),
      width: (
        67
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.labelLarge,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: (
                33
              ),
              width: (
                67
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  (
                   4
                  ),
                ),
                border: Border.all(
                  color: appTheme.blueGray100,
                  width: (
                 1
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
