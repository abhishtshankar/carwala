import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailoneController = TextEditingController();
  TextEditingController mobilenumberController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                         EdgeInsets.only(left: 16, top: 22 ,right: 16, bottom: 22),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding:  EdgeInsets.only(top: 47),
                              child: Text("Sign up to Appname",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleLarge)),
                          Container(
                              margin:  EdgeInsets.only(top: 5),
                              padding:  EdgeInsets.only(
                                  left: 24, top: 23, right: 24, bottom: 23),
                              decoration: AppDecoration.outline3.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder3),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: theme.textTheme.titleSmall),
                                    CustomTextFormField(
                                        controller: fullnameController,
                                        margin:  EdgeInsets.only(top: 8),
                                        contentPadding:  EdgeInsets.only(
                                             left: 12,
                                            top: 6,
                                        right: 12,
                                            bottom: 6),
                                        textStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        hintText: "Enter your full Name ",
                                        hintStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        textInputAction: TextInputAction.next,
                                        defaultBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        enabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        focusedBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        disabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 15),
                                        child: Text("Email",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: emailoneController,
                                        margin:  EdgeInsets.only(top: 8),
                                        contentPadding:  EdgeInsets.only(
                                             left: 12,
                                            top: 6,
                                        right: 12,
                                            bottom: 6),
                                        textStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        hintText: "Enter your Email ID ",
                                        hintStyle:
                                            CustomTextStyles.bodyMediumBlack900,
                                        textInputAction: TextInputAction.next,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        defaultBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        enabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        focusedBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41,
                                        disabledBorderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBluegray100TL41),
                                    Padding(
                                        padding:  EdgeInsets.only(top: 15),
                                        child: Text("Mobile",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: mobilenumberController,
                                        margin:  EdgeInsets.only(top: 8),
                                        contentPadding:  EdgeInsets.only(
                                             left: 12, top: 6, right: 12 ,bottom: 6),
                                        textStyle: CustomTextStyles.bodyMediumBlack900,
                                        hintText: "+91  Enter your Mobile Number ",
                                        hintStyle: CustomTextStyles.bodyMediumBlack900,
                                        textInputType: TextInputType.phone,
                                        defaultBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineBluegray100TL41,
                                        enabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineBluegray100TL41,
                                        focusedBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineBluegray100TL41,
                                        disabledBorderDecoration:
                                        TextFormFieldStyleHelper
                                            .outlineBluegray100TL41),
                                    CustomElevatedButton(
                                        text: "Sign Up",
                                        margin:  EdgeInsets.only(
                                            left: 3, top: 89, right: 3),
                                        buttonStyle: CustomButtonStyles
                                            .fillRedA700
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        (45)))),
                                        buttonTextStyle: CustomTextStyles
                                            .titleSmallPrimary_1,
                                        onTap: () {
                                          onTapSignup(context);
                                        }),
                                    Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapTxtAlreadyhavean(context);
                                            },
                                            child: Padding(
                                                padding:  EdgeInsets.only(
                                                    top: 20, bottom: 30),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Already have an account? ",
                                                          style: CustomTextStyles
                                                              .titleSmallBlack900_2),
                                                      TextSpan(
                                                          text: "Sign IN",
                                                          style: CustomTextStyles
                                                              .titleSmallBlueA700Bold)
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))))
                                  ])),
                          Opacity(
                              opacity: 0.9,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIstockphoto929,
                                  height: (129),
                                  width: (280),
                                  alignment: Alignment.center,
                                  margin:  EdgeInsets.only(top: 23)))
                        ]))),
            bottomNavigationBar: Padding(
                padding:  EdgeInsets.only(left: 79, bottom: 19),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Opacity(
                      opacity: 0.9,
                      child: Padding(
                          padding:  EdgeInsets.only(bottom: 1),
                          child: Text("Don’t have an account?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallPrimary_2))),
                  Padding(
                      padding:  EdgeInsets.only(left: 8, top: 1),
                      child: Text("Sign Up",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallPrimaryExtraBold))
                ]))));
  }

  void onTapSignup(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      ApiService apiService = ApiService();
      String? userId = await apiService.registerUser(
        fullnameController.text,
        emailoneController.text,
        mobilenumberController.text,
      );

      if (userId != null) {
        // Store user ID using SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_id', userId);
        Navigator.pushNamed(context, AppRoutes.logInTwoScreen);

        // Navigate to the next screen or show success message
        // Navigator.pushNamed(context, AppRoutes.btmBar);
      } else {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to register. Please try again.")),
        );
      }
    }
  }

  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }
}

class ApiService {
  Future<String?> registerUser(String name, String email, String mobileNumber) async {
    final url = Uri.parse('https://ctfl8gltri.execute-api.ap-south-1.amazonaws.com/dev/api/v1/register');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "name": name,
        "email": email,
        "mobileNumber": mobileNumber,
      }),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      // Assuming the ID is in the "user" object and it's named "_id"
      return body['user']['_id'];
    } else {
      // Handle errors or invalid responses
      return null;
    }
  }
}
