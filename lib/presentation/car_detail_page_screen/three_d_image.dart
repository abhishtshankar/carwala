import 'package:flutter/material.dart';

import '../../widgets/custom_image_view.dart';

class ThreeDImageView extends StatelessWidget {
  const ThreeDImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black87,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("View Image"),
      ),
      body: Center(
        child: CustomImageView(
          height: 200,
          imagePath: 'assets/images/xl6-maruti-suzuki.gif',
        ),
      ),
    );
  }
}
