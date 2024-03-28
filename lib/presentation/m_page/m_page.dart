import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MPage extends StatefulWidget {
  const MPage({Key? key})
      : super(
          key: key,
        );

  @override
  MPageState createState() => MPageState();
}

class MPageState extends State<MPage>
    with AutomaticKeepAliveClientMixin<MPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
  

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
        
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(
                      left: 16,
                      top: 15,
                      right: 40,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: (
                                48
                              ),
                              width: (
                                147
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.deepPurpleA200,
                              ),
                            ),
                            Container(
                              height: (
                                48
                              ),
                              width: (
                                147
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onErrorContainer,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                            right: 67,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.lime400,
                                ),
                              ),
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.lightGreen800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                            right: 67,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.pink600,
                                ),
                              ),
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.redA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                            right: 67,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray800,
                                ),
                              ),
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.teal500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                            right: 67,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo800,
                                ),
                              ),
                              Container(
                                height: (
                                  48
                                ),
                                width: (
                                  147
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.yellow90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(
                            top: 7,
                            right: 67,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                              Text(
                                "Loren epsom".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.labelLargeBlack900_1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
