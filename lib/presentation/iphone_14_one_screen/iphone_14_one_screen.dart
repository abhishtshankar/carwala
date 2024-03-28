import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_checkbox_button.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14OneScreen extends StatelessWidget {
  Iphone14OneScreen({Key? key}) : super(key: key);

  TextEditingController fullnameController = TextEditingController();

  TextEditingController grouponeController = TextEditingController();

  bool isCheckbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Form(key: _formKey,
            child: Container(width: double.maxFinite,
                padding: EdgeInsets.only(
                    left: 16, top: 12, right: 16, bottom: 12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CustomImageView(svgPath: ImageConstant.
                    imgArrowleft, height: (24), width: (24), onTap: () {
                      onTapImgArrowleft(context);
                    }),
                Padding(padding: EdgeInsets.only(top: 25),
                    child: Text("Maruti Suzuki Alto K10",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900)),
                Container(width: (313),
                    margin: EdgeInsets.only(top: 10, right: 45),
                    child: Text(
                        "Provide your contact details for test Drive, EMI option\noffers & Exchange benefits",
                        maxLines: 2 ,overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodySmall12_2)),
                Container(width: (358),
                    margin: EdgeInsets.only(top: 29),
                    padding: EdgeInsets.only(
                        left: 23, top: 16, right: 23, bottom: 16),
                    decoration: AppDecoration.fill3,
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextFormField(controller: fullnameController,
                              margin: EdgeInsets.only(right: 8),
                              contentPadding: EdgeInsets.only(
                                  left: 12, top: 8, right: 12 ,bottom: 8),
                              textStyle: CustomTextStyles.bodySmallBlack90012,
                              hintText: "Full Name",
                              hintStyle: CustomTextStyles.bodySmallBlack90012,
                              textInputAction: TextInputAction.next,
                              filled: true,
                              fillColor: theme.colorScheme.primary,
                              defaultBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              enabledBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              focusedBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              disabledBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4),
                          CustomTextFormField(controller: grouponeController,
                              margin: EdgeInsets.only(top: 16, right: 8),
                              contentPadding: EdgeInsets.only(
                                  left: 12, top: 8, right: 12 ,bottom: 8),
                              textStyle: CustomTextStyles.bodySmallBlack90012,
                              hintText: "Contact Number",
                              hintStyle: CustomTextStyles.bodySmallBlack90012,
                              textInputType: TextInputType.number, filled: true,
                              fillColor: theme.colorScheme.primary,
                              defaultBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              enabledBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              focusedBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4,
                              disabledBorderDecoration: TextFormFieldStyleHelper
                                  .outlineBluegray100TL4)
                        ])),
                CustomCheckboxButton(
                    text: "By clicking ahead you agree to Visitor agreement\n & Privacy Policy",
                    value: isCheckbox,
                    margin: EdgeInsets.only(left: 3, top: 19, right: 27),
                    textStyle: CustomTextStyles.bodySmall12_2, onChange: (value)
                {isCheckbox = value;}),
            CustomElevatedButton(text: "Submit",
                margin: EdgeInsets.only(left: 8, top: 51, right: 7, bottom: 5),
                buttonStyle: CustomButtonStyles.fillRedA700.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(double.maxFinite, (45)))),
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_1)])))));
  }


  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
