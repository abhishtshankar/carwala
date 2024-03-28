import '../iphone_14_two_screen/widgets/listgroup_item_widget.dart';
import 'package:carwalee/core/app_export.dart';

import 'package:flutter/material.dart';

class Iphone14TwoScreen extends StatelessWidget {
  const Iphone14TwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding:  EdgeInsets.only(left: 17, right: 17),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 1, top: 12 ,bottom: 5),
                  child: Row(children: [
                    Padding(
                      padding:  EdgeInsets.only(bottom: 6),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: (118),
                              width: (47),
                              margin:  EdgeInsets.only(left: 1),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplashplkgcsboiw4,
                                        height: (42),
                                        width: (42),
                                        radius: BorderRadius.circular(
                                            (21)),
                                        alignment: Alignment.topLeft,
                                        margin:  EdgeInsets.only(top: 6)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUnsplashoqtafyt5ktw,
                                        height: (42),
                                        width: (42),
                                        radius: BorderRadius.circular(
                                            (21)),
                                        alignment: Alignment.bottomLeft),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding:
                                             EdgeInsets.only(left: 28, bottom: 29),
                                        child: ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: (51));
                                            },
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return ListgroupItemWidget();
                                            }),
                                      ),
                                    ),
                                  ]),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplasht0nojypgbok,
                              height: (42),
                              width: (42),
                              radius: BorderRadius.circular(
                                (21),
                              ),
                              margin:  EdgeInsets.only(top: 29),
                            ),
                          ]),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 8, top: 2),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Loren Epsom",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleSmallBlack900),
                            SizedBox(
                                width: (239),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallOutfit)),
                            Padding(
                                padding:  EdgeInsets.only(top: 25),
                                child: Text("Loren Epsom",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900)),
                            SizedBox(
                                width: (239),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodySmallOutfit)),
                            Padding(
                                padding:  EdgeInsets.only(top: 25),
                                child: Text("Loren Epsom",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        CustomTextStyles.titleSmallBlack900)),
                            SizedBox(
                              width: (239),
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit\ndolor sit amet, consectetur adipiscing elit.  ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodySmallOutfit),
                            ),
                          ]),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 17, top: 21, bottom: 12),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("1m ago.",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    CustomTextStyles.labelLargeOutfitGray600),
                            Padding(
                                padding:  EdgeInsets.only(top: 57),
                                child: Text("1m ago.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .labelLargeOutfitGray600)),
                            Padding(
                              padding:  EdgeInsets.only(top: 57),
                              child: Text("1m ago.",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.labelLargeOutfitGray600),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
