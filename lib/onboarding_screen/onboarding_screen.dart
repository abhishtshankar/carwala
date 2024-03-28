import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../presentation/log_in_screen/log_in_screen.dart';
import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import '../widgets/custom_elevated_button.dart';
import 'constent_onboarding.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image,
                        height: 350,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              contents.length,
                                  (index) => buildDot(index, context),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        contents[i].title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeBlack900Bold,
                      ),
                      SizedBox(height: 20),
                      // Text(
                      //   contents[i].discription,
                      //   maxLines: 3,
                      //   overflow: TextOverflow.ellipsis,
                      //   textAlign: TextAlign.center,
                      //   style: CustomTextStyles.titleSmallBlack900_1,
                      // )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 98.0),
            child: Container(
              width: (
                308
              ),
              child: Text(
                "Borem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child:       CustomElevatedButton(
              onTap: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LogInScreen(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              text:  currentIndex == contents.length - 1 ? "Skip" : "Skip",
              margin: EdgeInsets.only(
                top: 7
              ),
              buttonStyle: CustomButtonStyles.fillRedA700TL18.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                    (
                      90
                    ),
                    (
                      37
                    ),
                  ))),
              buttonTextStyle: CustomTextStyles.titleSmallPrimary_1,
              alignment: Alignment.centerRight,
            ),

          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 55 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Color(0xFFC20000),
      ),
    );
  }
}
