import 'package:carwalee/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:flutter/material.dart';
import '../core/utils/image_constant.dart';
import 'app_bar/appbar_image.dart';
import 'app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class PrivacyPolicy extends StatelessWidget {
  TextEditingController group502Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            height: (57),
            leadingWidth: 41,
            leading: AppbarImage(
                height: (26),
                width: (26),
                svgPath: ImageConstant.imgArrowleft,
                margin:  EdgeInsets.only(left: 15, top: 15, bottom: 15),
                onTap: () => onTapArrowleft2(context)),
            centerTitle: true,
            title: AppbarSubtitle3(text: "Privacy Plicy")),
        body: Container(
            width: double.maxFinite,
            padding:  EdgeInsets.only(left: 20, top: 39, right: 20, bottom: 39),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    textAlign: TextAlign.left,),

                ])));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}