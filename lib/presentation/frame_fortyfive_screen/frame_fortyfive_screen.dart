import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_search_view.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FrameFortyfiveScreen extends StatelessWidget {
  FrameFortyfiveScreen({Key? key}) : super(key: key);

  TextEditingController jaguarController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  TextEditingController astonmartinController = TextEditingController();

  TextEditingController audiController = TextEditingController();

  TextEditingController bentleyController = TextEditingController();

  TextEditingController bmwController = TextEditingController();

  TextEditingController bydController = TextEditingController();

  TextEditingController chevroletController = TextEditingController();

  TextEditingController citroenController = TextEditingController();

  TextEditingController datsunController = TextEditingController();

  TextEditingController ferrariController = TextEditingController();

  TextEditingController forcemotorsController = TextEditingController();

  TextEditingController hondaController = TextEditingController();

  TextEditingController hyundaiController = TextEditingController();

  TextEditingController isuzuController = TextEditingController();

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(width: (358),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomElevatedButton(text: "Select Brand",
                      rightIcon: Container(margin: EdgeInsets.only(left: 30),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSimplelineiconsclose)),
                      buttonStyle: CustomButtonStyles.outlineBlack9001.copyWith(
                          fixedSize: MaterialStateProperty.all<Size>(
                              Size(double.maxFinite, (56)))),
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onTap: () {
                        onTapSelectbrand(context);
                      }),
                  CustomSearchView(
                      margin: EdgeInsets.only(left: 16, top: 20, right: 16),
                      controller: searchController,
                      hintText: "What you are looking for ?",
                      hintStyle: CustomTextStyles.bodyMediumBlack900,
                      textStyle: CustomTextStyles.bodyMediumBlack900,
                      suffix: Container(margin: EdgeInsets.only(
                          left: 30, top: 10, right: 16, bottom: 10),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgSearchGray800)),
                      suffixConstraints: BoxConstraints(maxHeight: (40)),
                      contentPadding: EdgeInsets.only(
                          left: 16, top: 7, bottom: 7)),
                  CustomTextFormField(controller: astonmartinController,
                      margin: EdgeInsets.only(left: 16, top: 19, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Aston Martin",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: audiController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Audi",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: bentleyController,
                      margin: EdgeInsets.only(left: 16, top: 13, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Bentley",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: bmwController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "BMW",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: bydController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "BYD",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: chevroletController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Chevrolet",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: citroenController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Citroen",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: datsunController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Datsun",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: ferrariController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Ferrari",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: forcemotorsController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Force Motors",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: hondaController,
                      margin: EdgeInsets.only(left: 16, top: 11, right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Honda",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: hyundaiController,
                      margin: EdgeInsets.only(left: 16, top: 12 ,right: 16),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Hyundai",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100),
                  CustomTextFormField(controller: isuzuController,
                      margin: EdgeInsets.only(
                          left: 16, top: 11, right: 16, bottom: 5),
                      textStyle: CustomTextStyles.titleSmallBlack900_1,
                      hintText: "Isuzu",
                      hintStyle: CustomTextStyles.titleSmallBlack900_1,
                      textInputAction: TextInputAction.next,
                      defaultBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      enabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      focusedBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100,
                      disabledBorderDecoration: TextFormFieldStyleHelper
                          .underLineBluegray100)
                ])),
        bottomNavigationBar: CustomTextFormField(controller: jaguarController,
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 34),
            textStyle: CustomTextStyles.titleSmallBlack900_1,
            hintText: "Jaguar",
            hintStyle: CustomTextStyles.titleSmallBlack900_1,
            defaultBorderDecoration: TextFormFieldStyleHelper
                .underLineBluegray100,
            enabledBorderDecoration: TextFormFieldStyleHelper
                .underLineBluegray100,
            focusedBorderDecoration: TextFormFieldStyleHelper
                .underLineBluegray100,
            disabledBorderDecoration: TextFormFieldStyleHelper
                .underLineBluegray100)));
  }

  /// Navigates to the compareNavbarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the compareNavbarScreen.
  onTapSelectbrand(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.compareNavbarScreen);
  }
}
