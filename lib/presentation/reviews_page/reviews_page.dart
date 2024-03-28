import '../reviews_page/widgets/reviews_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  ReviewsPageState createState() => ReviewsPageState();
}

class ReviewsPageState extends State<ReviewsPage>
    with AutomaticKeepAliveClientMixin<ReviewsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding:  EdgeInsets.only(left: 15, top: 40, right: 17),
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount:4,
                itemBuilder: (context, index) {
                  return ReviewsItemWidget(onTapColumnrectangle: () {
                    onTapColumnrectangle(context);
                  });
                }),
          ),
        ),
      ),
    );
  }

  /// Navigates to the reviewPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the reviewPageScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewPageScreen);
  }
}
