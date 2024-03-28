import 'package:flutter/material.dart';

class ImageViewer extends StatefulWidget {
  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  final List<String> imagePaths = [
    'assets/images/img_rectangle19.png',
    'assets/images/img_rectangle13.png',
    'assets/images/img_rectangle119_113x179.png',
    'assets/images/img_rectangle260.png',
  ];
  int currentIndex = 0;
  final PageController _pageController = PageController();

  void goToPreviousImage() {
    if (currentIndex > 0) {
      currentIndex--;
      _pageController.jumpToPage(currentIndex);
    }
  }

  void goToNextImage() {
    if (currentIndex < imagePaths.length - 1) {
      currentIndex++;
      _pageController.jumpToPage(currentIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Text('View Images', style: TextStyle(color: Colors.black))),
      ),
      body: Stack(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              itemCount: imagePaths.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  height: 200,
                );
              },
            ),
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
