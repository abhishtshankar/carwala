import 'package:carwalee/presentation/images_page/images_page.dart';
import 'package:carwalee/presentation/photos_screen/photos_screen.dart';
import 'package:carwalee/presentation/review_page_screen/review_page_screen.dart';
import 'package:carwalee/presentation/reviews_page/reviews_page.dart';
import 'package:carwalee/presentation/videos_page/videos_page.dart';

import '../news_page/widgets/news_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class NewsPageScreen extends StatefulWidget {
  const NewsPageScreen({Key? key}) : super(key: key);

  @override
  NewsPageScreenState createState() => NewsPageScreenState();
}

class NewsPageScreenState extends State<NewsPageScreen>
    with AutomaticKeepAliveClientMixin<NewsPageScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  
    return


    SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding:  EdgeInsets.only(left: 16, top: 46, right: 15),
          child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: (16));
              },
              itemCount:4,
              itemBuilder: (context, index) {
                return NewsItemWidget(onTapColumnrectangle: () {
                  onTapColumnrectangle(context);
                });
              }),
        ),
      );

  }

  /// Navigates to the carNewsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carNewsScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carNewsScreen);
  }
}
