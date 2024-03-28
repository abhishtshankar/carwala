import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BPage extends StatefulWidget {
  const BPage({Key? key})
      : super(
          key: key,
        );

  @override
  BPageState createState() => BPageState();
}

class BPageState extends State<BPage>
    with AutomaticKeepAliveClientMixin<BPage> {
  TextEditingController group153Controller = TextEditingController();

  TextEditingController group141Controller = TextEditingController();

  TextEditingController group152Controller = TextEditingController();

  TextEditingController group140Controller = TextEditingController();

  TextEditingController group151Controller = TextEditingController();

  TextEditingController group139Controller = TextEditingController();

  TextEditingController group138Controller = TextEditingController();

  TextEditingController group149Controller = TextEditingController();

  TextEditingController group137Controller = TextEditingController();

  TextEditingController group148Controller = TextEditingController();

  TextEditingController group136Controller = TextEditingController();

  TextEditingController group147Controller = TextEditingController();

  TextEditingController group135Controller = TextEditingController();

  TextEditingController group146Controller = TextEditingController();

  TextEditingController group134Controller = TextEditingController();

  TextEditingController group145Controller = TextEditingController();

  TextEditingController group133Controller = TextEditingController();

  TextEditingController group144Controller = TextEditingController();

  TextEditingController group132Controller = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController zipcodeoneController = TextEditingController();

  TextEditingController zipcodetwoController = TextEditingController();

  TextEditingController zipcodethreeController = TextEditingController();

  TextEditingController zipcodefourController = TextEditingController();

  TextEditingController zipcodefiveController = TextEditingController();

  TextEditingController zipcodesixController = TextEditingController();

  TextEditingController zipcodesevenController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController group107Controller = TextEditingController();

  TextEditingController zipcodeeightController = TextEditingController();

  TextEditingController zipcodenineController = TextEditingController();

  TextEditingController group116Controller = TextEditingController();

  TextEditingController group104Controller = TextEditingController();

  TextEditingController group126Controller = TextEditingController();

  TextEditingController group124Controller = TextEditingController();

  TextEditingController group112Controller = TextEditingController();

  TextEditingController group122Controller = TextEditingController();

  TextEditingController group110Controller = TextEditingController();

  TextEditingController group108Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                top: 11,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                      left: 17,
                    ),
                    child: Text(
                      "Engine & Transmission",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(
                      top: 6,
                    ),
                    padding:  EdgeInsets.only(
                      left: 16,
                      top: 9,
                      right: 16,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.fill6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            "Top Speed (kmph)",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group153Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "301",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group141Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "290",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 9,
                            ),
                            child: Text(
                              "Acceleration (0-100 kmph)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group152Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "4",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group140Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "4.6",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Engine",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin:  EdgeInsets.only(
                                  right: 8,
                                ),
                                padding:  EdgeInsets.only(
                                   left: 12,
                                  top: 15,
                              right: 12,
                                  bottom: 10,
                                ),
                                decoration: AppDecoration.outline16,
                                child: Container(
                                  width: (
                                    147
                                  ),
                                  margin:  EdgeInsets.only(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "5198 cc, 12 cylinder in\nV shape, 4 valves,\nDOHC",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                              Container(
                                margin:  EdgeInsets.only(
                                  left: 8,
                                ),
                                padding:  EdgeInsets.only(
                                  left: 8,
                                  top: 15,
                                  right: 5,
                                  bottom: 10,
                                ),
                                decoration: AppDecoration.outline16,
                                child: Container(
                                  width: (
                                    147
                                  ),
                                  margin:  EdgeInsets.only(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "3996 cc, 8 cylinder in\nV shape, 4 valves,\nDOHC",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Engine type",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin:  EdgeInsets.only(
                                  right: 8,
                                ),
                                padding:  EdgeInsets.all(
                                  5,
                                ),
                                decoration: AppDecoration.outline16,
                                child: SizedBox(
                                  width: (
                                    159
                                  ),
                                  child: Text(
                                    "4.0L M177\nTwin-turbocharged V8",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                              Container(
                                margin:  EdgeInsets.only(
                                  left: 10,
                                ),
                                padding:  EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: AppDecoration.outline16,
                                child: SizedBox(
                                  width: (
                                    159
                                  ),
                                  child: Text(
                                    "4.0L\nTwin-turbocharged V8",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Fuel type",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group151Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group139Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 9,
                            ),
                            child: Text(
                              "Max Power (bhprpm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomOutlinedButton(
                                  text: "503 bhp  6000rpm",
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  buttonStyle: CustomButtonStyles
                                      .outlineBluegray1001
                                      .copyWith(
                                          fixedSize:
                                              MaterialStateProperty.all<Size>(
                                                  Size(
                                    double.maxFinite,
                                    (
                                      32
                                    ),
                                  ))),
                                  buttonTextStyle: theme.textTheme.bodyMedium!,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group138Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "542 bhp  6000rpm",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 9,
                            ),
                            child: Text(
                              "Max Torque (Nmrpm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group149Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "675 Nm 2000 rpm",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group137Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "770 Nm 2000 rpm",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 9,
                            ),
                            child: Text(
                              "Mileage (ARAI)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group148Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "8.9",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group136Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "7.6",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Driving Range",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group147Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "694",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group135Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "654",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 8,
                            ),
                            child: Text(
                              "Drivetrain",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top:4
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group146Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "RWD",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group134Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "AWD",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 8,
                            ),
                            child: Text(
                              "Transmission",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top:4
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group145Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Automatic (DCT)",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group133Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Automatic (TC)",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 9,
                            ),
                            child: Text(
                              "Turbocharger/Supercharger",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                            bottom: 7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group144Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group132Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: 17,
                      top: 15,
                    ),
                    child: Text(
                      "Dimensions & Wight",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(
                      top: 6,
                    ),
                    padding:  EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    decoration: AppDecoration.fill6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              "Length (mm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodeController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "4789",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodeoneController,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "5350",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 15,
                            ),
                            child: Text(
                              "Width (mm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top:4
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodetwoController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "1940",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodethreeController,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "2222",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text(
                              "Height (mm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodefourController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "1254",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodefiveController,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "1754",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 15,
                            ),
                            child: Text(
                              "Wheelbase (mm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top:4
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodesixController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "2805",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodesevenController,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "3152",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 15,
                            ),
                            child: Text(
                              "Ground Clearance (mm)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top:4
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: languageController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "-",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group107Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "180",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text(
                              "Kerb Weight (kg)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodeeightController,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "1822",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: zipcodenineController,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "2451",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 17,
                            ),
                            child: Text(
                              "Length",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group116Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group104Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Petrol",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: 17,
                      top: 16,
                    ),
                    child: Text(
                      "Capacity",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(
                      top: 7,
                    ),
                    padding:  EdgeInsets.only(
                      left: 16,
                      top: 13,
                      right: 16,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fill6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.7,
                          child: Text(
                            "Doors",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextFormField(
                                width: (
                                  171
                                ),
                                controller: group126Controller,
                                contentPadding:  EdgeInsets.only(
                                  left: 16,
                                  top: 5,
                                  right: 16,
                                  bottom: 5,
                                ),
                                textStyle: theme.textTheme.bodyMedium!,
                                hintText: "2",
                                hintStyle: theme.textTheme.bodyMedium!,
                                textInputAction: TextInputAction.next,
                                filled: true,
                                fillColor: theme.colorScheme.primary,
                              ),
                              Container(
                                width: (
                                  171
                                ),
                                padding:  EdgeInsets.only(
                                  left: 16,
                                  top: 5,
                                  right: 16,
                                  bottom: 5,
                                ),
                                decoration: AppDecoration.txtOutline4,
                                child: Text(
                                  "5",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 17,
                            ),
                            child: Text(
                              "Seating Capacity",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group124Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "4",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group112Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "5",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 17,
                            ),
                            child: Text(
                              "No of Seating Rows",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group122Controller,
                                  margin:  EdgeInsets.only(
                                    right: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "2",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  controller: group110Controller,
                                  margin:  EdgeInsets.only(
                                    left: 8,
                                  ),
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "2",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text(
                              "Bootspace (litres)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  decoration: AppDecoration.txtOutline4,
                                  child: Text(
                                    "--",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: CustomTextFormField(
                                  width: (
                                    171
                                  ),
                                  controller: group108Controller,
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "454",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding:  EdgeInsets.only(
                              top: 16,
                            ),
                            child: Text(
                              "Fuel Tank Capacity (litres)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
                            ),
                          ),
                        ),
                        // Padding(
                        //   padding:  EdgeInsets.only(
                        //     top: 3,
                        //     bottom: 2
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment:
                        //         MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Expanded(
                        //         child: Container(
                        //           width: (
                        //             171,
                        //           ),
                        //           padding:  EdgeInsets.only(
                        //             left: 16,
                        //             top: 5,
                        //             right: 16,
                        //             bottom: 5,
                        //           ),
                        //           decoration: AppDecoration.txtOutline4,
                        //           child: Text(
                        //             "78",
                        //             overflow: TextOverflow.ellipsis,
                        //             textAlign: TextAlign.left,
                        //             style: theme.textTheme.bodyMedium,
                        //           ),
                        //         ),
                        //       ),
                        //       Expanded(
                        //         child: Container(
                        //           width: (
                        //             171,
                        //           ),
                        //           padding:  EdgeInsets.only(
                        //             left: 16,
                        //             top: 5,
                        //             right: 16,
                        //             bottom: 5,
                        //           ),
                        //           decoration: AppDecoration.txtOutline4,
                        //           child: Text(
                        //             "85",
                        //             overflow: TextOverflow.ellipsis,
                        //             textAlign: TextAlign.left,
                        //             style: theme.textTheme.bodyMedium,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
