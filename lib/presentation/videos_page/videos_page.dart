import '../videos_page/widgets/videos_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VideosPage extends StatefulWidget {
  const VideosPage({Key? key})
      : super(
          key: key,
        );

  @override
  VideosPageState createState() => VideosPageState();
}

class VideosPageState extends State<VideosPage>
    with AutomaticKeepAliveClientMixin<VideosPage> {
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
            padding:  EdgeInsets.only(
              left: 16,
              top: 39,
              right: 16,
            ),
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: (
                    20
                  ),
                );
              },
              itemCount:4,
              itemBuilder: (context, index) {
                return VideosItemWidget();
              },
            ),
          ),
        ),
      ),
    );
  }
}
