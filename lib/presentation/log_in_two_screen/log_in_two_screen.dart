import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LogInTwoScreen extends StatefulWidget {
  const LogInTwoScreen({Key? key}) : super(key: key);

  @override
  State<LogInTwoScreen> createState() => _LogInTwoScreenState();
}

class _LogInTwoScreenState extends State<LogInTwoScreen> {
  String mobileNumber = '';
  String currentOtp = '';

  @override
  void initState() {
    super.initState();
    _loadMobileNumber();
  }

  Future<void> _loadMobileNumber() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      mobileNumber = prefs.getString('mobile_number') ?? '';
    });
  }

  Future<void> _verifyOtp() async {
    if (currentOtp.isNotEmpty) {
      ApiService apiService = ApiService();
      bool isVerified = await apiService.verifyOtp(mobileNumber, currentOtp);
      if (isVerified) {
        // Proceed to next screen or show success message
        // Navigator.pushNamed(context, '/home'); // Adjust route as needed
      } else {
        // Show error message
        _showSnackBar('OTP verification failed.');
      }
    } else {
      _showSnackBar('Please enter the OTP.');
    }
  }

  void _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding:  EdgeInsets.only(left: 16, top: 22 ,right: 16, bottom: 22),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding:  EdgeInsets.only(top: 45),
                            child: Text("OTP Verification",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge)),
                        Container(
                            margin:  EdgeInsets.only(top: 72),
                            padding:  EdgeInsets.all( 24),
                            decoration: AppDecoration.outline3.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Enter the OTP sent to",
                                                style: CustomTextStyles.bodyMediumOutfitPrimaryContainer),
                                            TextSpan(
                                                text: " -",
                                                style: CustomTextStyles.titleSmallOutfitBlack900),
                                            TextSpan(
                                                text:" +91-$mobileNumber",
                                                style: CustomTextStyles.titleSmallOutfitBlueA700)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  Padding(
                                      padding:  EdgeInsets.only(
                                          left: 16, top: 31, right: 17),
                                      child: PinCodeTextField(
                                          appContext: context,
                                          length:4,
                                          obscureText: false,
                                          obscuringCharacter: '*',
                                          keyboardType: TextInputType.number,
                                          autoDismissKeyboard: true,
                                          enableActiveFill: true,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.digitsOnly
                                          ],
                                          onChanged: (value) => setState(() => currentOtp = value),
                                          textStyle: TextStyle(
                                              color: appTheme.black900,
                                              fontSize: (18),
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.w500),
                                          pinTheme: PinTheme(
                                              fieldHeight: (58),
                                              fieldWidth: (58),
                                              shape: PinCodeFieldShape.box,
                                              borderRadius: BorderRadius.circular(
                                                  (10)),
                                              selectedFillColor: theme.colorScheme.onError,
                                              activeFillColor: theme.colorScheme.onError,
                                              inactiveFillColor: theme.colorScheme.onError,
                                              inactiveColor: Color(0X1212121D),
                                              selectedColor: Color(0X1212121D),
                                              activeColor: Color(0X1212121D)))),
                                  Padding(
                                      padding:  EdgeInsets.only(top: 38),
                                      child: Text("00:120 Sec",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles.titleSmallOutfitGray80002)),
                                  Padding(
                                      padding:  EdgeInsets.only(top: 24),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Don’t receive code ? ",
                                                style: CustomTextStyles.bodyMediumOutfitGray700_1),
                                            TextSpan(
                                                text: "Re-send",
                                                style: CustomTextStyles.titleSmallOutfitBlueA700)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  CustomElevatedButton(
                                      text: "Log In",
                                      margin:  EdgeInsets.only(
                                          left: 3, top: 39, right: 3, bottom: 11),
                                      buttonStyle: CustomButtonStyles.fillRedA700
                                          .copyWith(
                                              fixedSize:
                                                  MaterialStateProperty.all<Size>(
                                                      Size(double.maxFinite,
                                                          (45)))),
                                      buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
                                      onTap: () {
                                        onTapLogin(context);
                                      })
                                ])),
                        Opacity(
                            opacity: 0.3,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIstockphoto929,
                                height: (129),
                                width: (280),
                                alignment: Alignment.center,
                                margin:  EdgeInsets.only(top: 86)))
                      ]),
                )),
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

  onTapLogin(BuildContext context) {
    _verifyOtp();
    Navigator.pushNamed(context, AppRoutes.btmBar);
  }
}

class ApiService {
  Future<bool> verifyOtp(String mobileNumber, String otp) async {
    final url = Uri.parse('https://ctfl8gltri.execute-api.ap-south-1.amazonaws.com/dev/api/v1/verify/otp');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({"mobileNumber": mobileNumber, "otp": otp}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['message'] == 'OTP verification successful.') {
        // Save token and user ID using SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', data['token']);
        await prefs.setString('user_id', data['user']['_id']);
        return true;
      }
    }
    return false;
  }
}
