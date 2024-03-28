import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_checkbox_button.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController nameoneController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  bool isCheckbox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding:  EdgeInsets.only(left: 16, top: 22 ,right: 16, bottom: 22),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding:  EdgeInsets.only(top: 48, bottom: 10),
                        child: Text("Log In to Appname",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleLarge)),
                    Container(
                      margin:  EdgeInsets.only(top: 5),
                      padding:
                           EdgeInsets.only(left: 24, top: 23, right: 24, bottom: 23),
                      decoration: AppDecoration.outline3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
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
                                controller: nameoneController,
                                margin:  EdgeInsets.only(top: 8),
                                contentPadding:  EdgeInsets.only(
                                     left: 12, top: 6, right: 12, bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Name ",
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
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
                                     left: 12, top: 6, right: 12 ,bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Email ID ",
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.emailAddress,
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
                                child: Text("Mobile Number",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleSmall)),
                            CustomTextFormField(
                                controller: mobilenumberController,
                                margin:  EdgeInsets.only(top: 8),
                                contentPadding:  EdgeInsets.only(
                                     left: 12, top: 6, right: 12 ,bottom: 6),
                                textStyle: CustomTextStyles.bodyMediumBlack900,
                                hintText: "Enter your Mobile Number ",
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
                            CustomCheckboxButton(
                                text: "Keep me signed in",
                                value: isCheckbox,
                                margin:  EdgeInsets.only(top: 42),
                                textStyle: theme.textTheme.titleSmall!,
                                onChange: (value) {
                                  isCheckbox = value;
                                }),
                            CustomElevatedButton(
                                text: "Log In",
                                margin:  EdgeInsets.only(left: 3, top: 21, right: 3),
                                buttonStyle: CustomButtonStyles.fillRedA700
                                    .copyWith(
                                        fixedSize:
                                            MaterialStateProperty.all<Size>(
                                                Size(double.maxFinite,
                                                    (45)))),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallPrimary_1,
                                onTap: () {
                                  onTapLogin(context);
                                }),
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  onTapTxtDonthaveanaccount(context);
                                },
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 23, bottom: 30),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account?",
                                            style: theme.textTheme.titleSmall),
                                        TextSpan(
                                            text: " ",
                                            style: CustomTextStyles
                                                .titleSmallBlueA700_2),
                                        TextSpan(
                                            text: "Sign UP",
                                            style: CustomTextStyles
                                                .titleSmallBlueA700Bold)
                                      ]),
                                      textAlign: TextAlign.left),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Opacity(
                      opacity: 0.9,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIstockphoto929,
                        height: (129),
                        width: (280),
                        alignment: Alignment.center,
                        margin:  EdgeInsets.only(top: 23),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        // bottomNavigationBar: Padding(
        //   padding:  EdgeInsets.only(left: 79, bottom: 19),
        //   child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //     Opacity(
        //       opacity: 0.9,
        //       child: Padding(
        //         padding:  EdgeInsets.only(bottom: 1),
        //         child: Text("Don’t have an account?",
        //             overflow: TextOverflow.ellipsis,
        //             textAlign: TextAlign.left,
        //             style: CustomTextStyles.titleSmallPrimary_2),
        //       ),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.only(left: 8, top: 1),
        //       child: Text("gn Up",
        //           overflow: TextOverflow.ellipsis,
        //           textAlign: TextAlign.left,
        //           style: CustomTextStyles.titleSmallPrimaryExtraBold),
        //     )
        //   ]),
        // ),
      ),
    );
  }

  onTapLogin(BuildContext context) async {
    final name = nameoneController.text;
    final email = emailoneController.text;
    final mobileNumber = mobilenumberController.text;

    ApiService apiService = ApiService();
    final responseData = await apiService.login(name, email, mobileNumber);

    if (responseData != null) {
      // Assuming 'otp' is the key in the response data where the OTP is stored
      final otpMessage = responseData['user']['otp'] ?? "Login Successful"; // Fallback message

      // Show Snackbar with OTP or success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(otpMessage)),
      );

      // Proceed with navigation or further actions
      Navigator.pushNamed(context, AppRoutes.logInTwoScreen);
    } else {
      // Handle login failure or show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Failed")),
      );
    }
  }

  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}

class ApiService {
  Future<Map<String, dynamic>?> login(String name, String email, String mobileNumber) async {
    final url = Uri.parse('https://ctfl8gltri.execute-api.ap-south-1.amazonaws.com/dev/api/v1/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'email': email, 'mobileNumber': mobileNumber}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data != null && data['user'] != null) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_id', data['user']['_id']);
        await prefs.setString('mobile_number', data['user']['mobileNumber']);
        print("User ID saved: ${data['user']['_id']}");
        print("User mobileNumber saved: ${data['user']['mobileNumber']}");
        return data;
      } else {
        print("Error: Invalid response data");
        return null;
      }
    } else {
      print("Error: Failed to login. Status code: ${response.statusCode}");
      return null;
    }
  }
}
