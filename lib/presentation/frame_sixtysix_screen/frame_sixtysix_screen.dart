import '../frame_sixtysix_screen/widgets/gridmg_item_widget.dart';
import 'package:carwalee/core/app_export.dart';
import 'package:carwalee/widgets/app_bar/appbar_image.dart';
import 'package:carwalee/widgets/app_bar/custom_app_bar.dart';
import 'package:carwalee/widgets/custom_elevated_button.dart';
import 'package:carwalee/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FrameSixtysixScreen extends StatelessWidget {
  const FrameSixtysixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            padding:  EdgeInsets.only(top: 14, bottom: 14),
            decoration: AppDecoration.fill1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              CustomAppBar(
                  height: (24),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: (24),
                      width: (24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin:  EdgeInsets.only(left: 16),
                      onTap: () {
                        onTapArrowleft21(context);
                      }),
                  title: Padding(
                      padding:  EdgeInsets.only(left: 8),
                      child: Text("See search Result",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme.textTheme.titleMedium))),
              Padding(
                  padding:  EdgeInsets.only(left: 16, top: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                            text: "Quick Search",
                            buttonStyle: CustomButtonStyles.fillRedA70001
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size((171),
                                            (37)))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallPrimary_1),
                        CustomOutlinedButton(
                            text: "Advanced",
                            margin:  EdgeInsets.only(left: 16),
                            buttonStyle: CustomButtonStyles.outlineRedA70001
                                .copyWith(
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        Size((171),
                                            (37)))),
                            buttonTextStyle:
                                CustomTextStyles.titleSmallRedA70001)
                      ])),
              Padding(
                  padding:  EdgeInsets.only(top: 16),
                  child: Divider(
                      height: (2),
                      thickness: (2),
                      color: appTheme.blueGray100)),
              Padding(
                  padding:  EdgeInsets.only(left: 22 ,top: 6),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload22,
                            height: (31),
                            width: (76),
                            margin:  EdgeInsets.only(top: 12 ,bottom: 8),
                            onTap: () {
                              onTapImgDownloadtwentyt(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: (52),
                            width: (52),
                            margin:  EdgeInsets.only(left: 28)),
                        CustomImageView(
                            imagePath: ImageConstant.imgDownload42,
                            height: (33),
                            width: (60),
                            margin:  EdgeInsets.only(left: 42, top: 10, bottom: 8)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImages61,
                            height: (34),
                            width: (47),
                            margin:  EdgeInsets.only(left: 44, top: 9, bottom: 8))
                      ])),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding:  EdgeInsets.only(left: 47, right: 25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Tata",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.labelMedium),
                            Padding(
                                padding:  EdgeInsets.only(left: 46, bottom: 1),
                                child: Text("Maruti Suzuki",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium)),
                            Padding(
                                padding:  EdgeInsets.only(left: 41, top: 1),
                                child: Text("Hyndai",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium)),
                            Spacer(),
                            Padding(
                                padding:  EdgeInsets.only(bottom: 1),
                                child: Text("Honda",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.labelMedium))
                          ]))),
              Padding(
                  padding:  EdgeInsets.only( left: 32, top: 33),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgD06f9bc82a50b58,
                            height: (43),
                            width: (44)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage45,
                            height: (40),
                            width: (40),
                            margin:  EdgeInsets.only(left: 50, top: 3)),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage46,
                            height: (40),
                            width: (72),
                            margin:  EdgeInsets.only(left: 45, top: 3)),
                        CustomImageView(
                            imagePath: ImageConstant.imgOgikia1,
                            height: (32),
                            width: (58),
                            margin:  EdgeInsets.only(left: 27, top: 7, bottom: 4))
                      ])),
              Padding(
                  padding:  EdgeInsets.only(left: 36, top: 9),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Skoda",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 30),
                        Text("Mahindra",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 31),
                        Text("Renault",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium),
                        Spacer(flex: 37),
                        Text("Kia",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.labelMedium)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup37929,
                  height: (40),
                  width: (330),
                  margin:  EdgeInsets.only(top: 43)),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.only(left: 27, top: 14, right: 25, bottom: 14),
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: (18),
                          crossAxisCount:4,
                          mainAxisSpacing: (69),
                          crossAxisSpacing: (69)),
                      physics: BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GridmgItemWidget();
                      }),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapImgDownloadtwentyt(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }
}
