
import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'iphone_14_two_screen.dart';


class NotificationTab extends StatefulWidget {
  const NotificationTab({Key? key}) : super(key: key);

  @override
  NotificationTabState createState() => NotificationTabState();
}

class NotificationTabState extends State<NotificationTab>
    with AutomaticKeepAliveClientMixin<NotificationTab> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      length: 2, // Updated to have 4 tabs
      child: Scaffold(
        appBar: CustomAppBar(
            height: (48),
            leadingWidth: 40,
            leading: AppbarImage(
                height: (24),
                width: (24),
                svgPath: ImageConstant.imgArrowleft,
                margin:  EdgeInsets.only(left: 16, top: 12 ,bottom: 12),
                onTap: () {
                  Navigator.pop(context);
                  // onTapArrowleft22(context);
                }),
            title: AppbarSubtitle3(
                text: "Notification", margin:  EdgeInsets.only(left: 5))),
        body: Column(
          children: [
            TabBar(

              unselectedLabelColor: Colors.black,
              labelColor:  Colors.black,
              indicatorColor:  Colors.black,
              isScrollable: true,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              labelPadding: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
              // Adding spacing between tabs
              tabs:<Widget>  [
                // Tab(child: Text('NEWS')),
                Tab(child: Text('General')),
                Tab(child: Row(
                  children: [
                    Text('Recomanded'),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: (
                          22
                        ),
                        height: (
                          22
                        ),

                        decoration: AppDecoration.txtFill1.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder2
                        ),
                        child: Center(
                          child: Text(
                            "12",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.labelMediumOutfitPrimary,
                          ),
                        ),
                      ),
                    )
                  ],
                )),

              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Iphone14TwoScreen(),
                  Iphone14TwoScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );


  }

}
