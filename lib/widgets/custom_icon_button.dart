import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: (height ?? 0),
          padding: EdgeInsets.all(0),
          icon: Container(
            alignment: Alignment.center,
            width: (width ?? 0),
            height: (height ?? 0),
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    (
                     30
                    ),
                  ),
                  border: Border.all(
                    color: appTheme.blueA700,
                    width: (
                      1.00
                    ),
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          (
           15
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: (
           2
            ),
            blurRadius: (
           2
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          (
         8
          ),
        ),
        border: Border.all(
          color: appTheme.blueGray100,
          width: (
     1
          ),
        ),
      );
  static BoxDecoration get outlineYellow900 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          (
         8
          ),
        ),
        border: Border.all(
          color: appTheme.yellow900,
          width: (
     1
          ),
        ),
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(
          (
         32
          ),
        ),
      );
  static BoxDecoration get outlineBluegray100TL32 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          (
         32
          ),
        ),
        border: Border.all(
          color: appTheme.blueGray100,
          width: (
     1
          ),
        ),
      );
}
