import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class Listriheartline1ItemWidget extends StatelessWidget {
  Listriheartline1ItemWidget({
    Key? key,
    this.onTapRow,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (
        111
      ),
      width: (
        358
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgRiheartlineGray800,
            height: (
            24
            ),
            width: (
            24
            ),
            alignment: Alignment.topRight,
            margin:  EdgeInsets.only(
              top: 12,
              right: 8,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapRow?.call();
              },
              child: Container(
                padding:  EdgeInsets.all(
             12
                ),
                decoration: AppDecoration.outline11.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle692,
                      height: (
                        87
                      ),
                      width: (
                        159
                      ),
                      radius: BorderRadius.circular(
                        (
                         4
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(
                        left: 16,
                        top: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Loren Epsom",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMediumGray800,
                          ),
                          Text(
                            "Rs. 12.57L",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                              top:4
                            ),
                            child: Text(
                              "On road Price(GST), Gaziabad",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodySmallGray800,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                              top:4
                            ),
                            child: RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: (
                                15
                              ),
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (
                                context,
                                _,
                              ) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
