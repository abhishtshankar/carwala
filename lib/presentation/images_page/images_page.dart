import '../images_page/widgets/images_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatefulWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  ImagesPageState createState() => ImagesPageState();
}

class ImagesPageState extends State<ImagesPage>
    with AutomaticKeepAliveClientMixin<ImagesPage> {
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
            padding:  EdgeInsets.only(left: 17, top: 35, right: 15),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: (18));
                },
                itemCount:4,
                itemBuilder: (context, index) {
                  return ImagesItemWidget(onTapColumnrectangle: () {
                    onTapColumnrectangle(context);
                  });
                }),
          ),
        ),
      ),
    );
  }

  /// Navigates to the photosScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the photosScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.photosScreen);
  }
}
