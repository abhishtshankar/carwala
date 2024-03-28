import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/presentation/images_page/images_page.dart';
import 'package:carwalee/presentation/news_page/news_page.dart';
import 'package:carwalee/presentation/reviews_page/reviews_page.dart';
import 'package:carwalee/presentation/used_cars_page/used_cars_page.dart';
import 'package:carwalee/presentation/videos_page/videos_page.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ImagesTabContainerScreen extends StatefulWidget {
  const ImagesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ImagesTabContainerScreenState createState() =>
      ImagesTabContainerScreenState();
}

class ImagesTabContainerScreenState extends State<ImagesTabContainerScreen>
    with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length:4 ,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: CustomAppBar(
          height: (
            48
          ),
          title: Padding(
            padding:  EdgeInsets.only(
              left: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    right: 73,
                  ),
                  child: Row(
                    children: [
                      AppbarSubtitle3(
                        text: "News",
                        margin:  EdgeInsets.only(
                          top: 1,
                        ),
                      ),
                      AppbarImage(
                        height: (
                          14
                        ),
                        width: (
                          14
                        ),
                        imagePath: ImageConstant.imgMaskgroup16,
                        margin:  EdgeInsets.only(
                           left: 12,
                          top: 3,
                          bottom:4
                        ),
                      ),
                      AppbarSubtitle3(
                        text: "Search",
                        margin:  EdgeInsets.only(
                          left: 6,
                          bottom: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      top: 1,
                    ),
                    child: SizedBox(
                      width: (
                        310
                      ),
                      child: Divider(
                        height: (
                       1
                        ),
                        thickness: (
                       1
                        ),
                        color: appTheme.gray800,
                        indent: (
                          160
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage(
              height: (
                20
              ),
              width: (
                20
              ),
              imagePath: ImageConstant.imgImage51,
              margin:  EdgeInsets.only(
                left: 8,
                top: 15,
                right: 8,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: (
                  29
                ),
                width: (
                  358
                ),
                margin:  EdgeInsets.only(
                  top: 14,
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelColor: appTheme.greenA700,
                  labelStyle: TextStyle(),
                  unselectedLabelColor: appTheme.gray800,
                  unselectedLabelStyle: TextStyle(),
                  indicatorColor: appTheme.greenA700,
                  tabs: [
                    Tab(
                      child: Text(
                        "NEWS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "REVIEWS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "VIDEOS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PHOTOS",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: (
                    1215
                  ),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      NewsPage(),
                      ReviewsPage(),
                      VideosPage(),
                      ImagesPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
