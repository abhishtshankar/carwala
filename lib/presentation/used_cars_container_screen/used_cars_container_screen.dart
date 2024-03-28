import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UsedCarsContainerScreen extends StatelessWidget {
  UsedCarsContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,

         ));
  }
}
