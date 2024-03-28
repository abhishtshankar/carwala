import 'package:carwalee/presentation/price_navbar_screen/calculate.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                CalculateScreen()), // Replace `NextPage` with your actual page
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Customize as needed
      body: Center(
        child:
            CircularProgressIndicator(), // Customize with your desired splash screen content
      ),
    );
  }
}
