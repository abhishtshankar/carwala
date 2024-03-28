import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class XPage extends StatefulWidget {
  const XPage({Key? key})
      : super(
          key: key,
        );

  @override
  XPageState createState() => XPageState();
}

class XPageState extends State<XPage>
    with AutomaticKeepAliveClientMixin<XPage> {
  TextEditingController lanedeparturewaController = TextEditingController();

  TextEditingController group220Controller = TextEditingController();

  TextEditingController group221Controller = TextEditingController();

  TextEditingController group229Controller = TextEditingController();

  TextEditingController group228Controller = TextEditingController();

  TextEditingController group227Controller = TextEditingController();

  TextEditingController group226Controller = TextEditingController();

  TextEditingController airbagscounterController = TextEditingController();

  TextEditingController airbagscounterController1 = TextEditingController();

  TextEditingController group224Controller = TextEditingController();

  TextEditingController group223Controller = TextEditingController();

  TextEditingController group621Controller = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
      
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(
                  top: 10,
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
                        "Safety",
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
                        top: 10,
                        right: 16,
                        bottom: 10,
                      ),
                      decoration: AppDecoration.fill6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              "Overspeed Warning",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallBlack900,
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
                                  child: CustomOutlinedButton(
                                    text: "1 beep over 80kmph",
                                    margin:  EdgeInsets.only(
                                      right: 8,
                                    ),
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray1001
                                        .copyWith(
                                            fixedSize: MaterialStateProperty
                                                .all<Size>(Size(
                                      double.maxFinite,
                                      (
                                        32
                                      ),
                                    ))),
                                    buttonTextStyle:
                                        theme.textTheme.bodyMedium!,
                                  ),
                                ),
                                Expanded(
                                  child: CustomOutlinedButton(
                                    text: "1 beep over 80kmph",
                                    margin:  EdgeInsets.only(
                                      left: 8,
                                    ),
                                    buttonStyle: CustomButtonStyles
                                        .outlineBluegray1001
                                        .copyWith(
                                            fixedSize: MaterialStateProperty
                                                .all<Size>(Size(
                                      double.maxFinite,
                                      (
                                        32
                                      ),
                                    ))),
                                    buttonTextStyle:
                                        theme.textTheme.bodyMedium!,
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
                                "Lane Departure Warning",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.txtOutline4,
                                  child: Text(
                                    "-",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                CustomTextFormField(
                                  width: (
                                    171
                                  ),
                                  controller: lanedeparturewaController,
                                  contentPadding:  EdgeInsets.only(
                                    left: 16,
                                    top: 5,
                                    right: 16,
                                    bottom: 5,
                                  ),
                                  textStyle: theme.textTheme.bodyMedium!,
                                  hintText: "Optional",
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.next,
                                  filled: true,
                                  fillColor: theme.colorScheme.primary,
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
                                "Emergency Brake Light Flashing",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Puncture Repair Kit",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Forward Collision Warning (FCW)",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Automatic Emergency Braking (AEB)",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "High-beam Assist",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Blind Spot Detection",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Airbags",
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
                                    controller: airbagscounterController,
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
                                    hintText: "2 Airbags",
                                    hintStyle: theme.textTheme.bodyMedium!,
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor: theme.colorScheme.primary,
                                  ),
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                    controller: airbagscounterController1,
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
                                    hintText: "6 Airbags",
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
                                "Middle rear three-point seatbelt",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Middle rear head rest",
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
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
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
                                "Tyre Pressure Monitoring System (TPMS)",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                              top: 3,
                              bottom: 3,
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                        ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: (
                                    32
                                  ),
                                  width: (
                                    171
                                  ),
                                  padding:  EdgeInsets.only(
                                    left: 16,
                                    top:4,
                                    right: 16,
                                    bottom:4
                                  ),
                                  decoration: AppDecoration.outline16,
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgIctwotonecheck,
                                        height: (
                                        24
                                        ),
                                        width: (
                                        24
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
