import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: (
          80
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        );
      case Style.bgFill:
        return Container(
          height: (
            71
          ),
          width: (
            383
          ),
          margin:  EdgeInsets.only(
            left: 7,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill,
}
