import 'package:carwalee/presentation/images_page/images_page.dart';
import 'package:carwalee/presentation/photos_screen/photos_screen.dart';
import 'package:carwalee/presentation/review_page_screen/review_page_screen.dart';
import 'package:carwalee/presentation/reviews_page/reviews_page.dart';
import 'package:carwalee/presentation/videos_page/videos_page.dart';

import '../news_page/widgets/news_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

import 'news_page_screen.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin<NewsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      length:4 ,// Updated to have 4 tabs
      child: Scaffold(
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 58.0,),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, color: Colors.black87),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0,), // Reduce vertical spacing
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),

              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert,color: Colors.black87,),
              onPressed: () {
                // Handle overflow menu action
              },
            ),
          ],
          leading: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 15),
            child: Text(
              'News',
              style: TextStyle(
                  color: Colors.black87,
                   fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(

              unselectedLabelColor: Colors.black,
              labelColor: Color(0xFF0BE58A),
              indicatorColor: Color(0xFF0BE58A),
              isScrollable: true,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10), // Adding spacing between tabs
              tabs: [
                // Tab(child: Text('NEWS')),
                Tab(child: Padding(padding: EdgeInsets.only(right: 18.0), child: Text('NEWS'))),
                Tab(child: Padding(padding: EdgeInsets.only(right: 18.0), child: Text('REVIEWS'))),
                Tab(child: Padding(padding: EdgeInsets.only(right: 18.0), child: Text('VIDEOS'))),
                Tab(child: Padding(padding: EdgeInsets.only(right: 1.0), child: Text('PHOTOS'))),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  NewsPageScreen(),
                  ReviewsPage(),
                  VideosPage(),
                  ImagesPage()

                ],
              ),
            ),
          ],
        ),
      ),
    );

    //
    // SizedBox(
    //     width: double.maxFinite,
    //     child: Padding(
    //       padding:  EdgeInsets.only(left: 16, top: 46, right: 15),
    //       child: ListView.separated(
    //           physics: BouncingScrollPhysics(),
    //           shrinkWrap: true,
    //           separatorBuilder: (context, index) {
    //             return SizedBox(height: (16));
    //           },
    //           itemCount:4
    //           itemBuilder: (context, index) {
    //             return NewsItemWidget(onTapColumnrectangle: () {
    //               onTapColumnrectangle(context);
    //             });
    //           }),
    //     ),
    //   ),

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
