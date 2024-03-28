import 'package:carwalee/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
  
    return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary,
        body: SizedBox(width: (375),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(decoration: AppDecoration.fill1,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding:  EdgeInsets.only(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                    child: Text("App Navigation",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .black900,
                                            fontSize: (20),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding:  EdgeInsets.only(left: 20),
                                    child: Text(
                                        "Check your app's UI from the below demo screens of your app.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .blueGray400,
                                            fontSize: (16),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Padding(padding:  EdgeInsets.only(top: 5),
                                child: Divider(height: (1),
                                    thickness: (1),
                                    color: appTheme.black900))
                          ])),
                  Expanded(child: SingleChildScrollView(child: Container(
                      decoration: AppDecoration.fill1,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [GestureDetector(onTap: () {
                            onTapWelcome(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Welcome ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCarDetail2OverviewTabContainer(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "Car Detail 2 (Overview) - Tab Container",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCarDetailPage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Car Detail Page",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPriceBreakup(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Price Breakup",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSdsf(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("sdsf",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSantro(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Santro",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFORMPOPUP(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("FORM POP UP",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrame37874(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame 37874",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomapage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Homapage",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSearchpage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Search page",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNewCar(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("New Car",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14One(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Two(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Two",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSplashOne(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Splash One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSplashTwo(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Splash Two",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSplashThree(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Splash Three",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLogin(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Log in",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSignUp(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sign Up",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginTwo(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Log in Two",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameOne(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginOne(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Log in One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameThirteen(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame Thirteen",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBodyType(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Body Type",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMakeBrand(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Make: Brand",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSortBy(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sort By",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBudget(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Budget",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFueltype(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Fuel type",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapTransmissionType(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Transmission Type",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSeatingCapacity(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Seating Capacity",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAirbags(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Airbags",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMileage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Mileage",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSafeyRatings(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Safey Ratings",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEnginecapacity(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Engine capacity",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPower(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Power",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapTorque(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Torque",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapColours(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Colours",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAdditionalFeatures(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Additional Features",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameSixtySix(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame SixtySix",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPriceNavbar(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Price Navbar",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCompareNavbar(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Compare Navbar",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapA(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("a",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBTabContainer(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("b - Tab Container",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapN(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("n",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapUsedcarsContainer(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Used cars - Container",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameFortyFive(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame FortyFive",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameFortyFour(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame FortyFour",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPhotos(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Photos\\",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapUsedcarPage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Used car Page",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoOne(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwo(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoTwo(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Two",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoFour(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Four",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoSix(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Six",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoThree(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Three",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoSeven(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Seven",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsOne(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell Cars One",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCars(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Cars",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSellCarsTwoFive(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Sell CarsTwo Five",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEmiCalculator(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Emi Calculator",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Four(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Four",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Five(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Five",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Six(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Six",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Seven(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Seven",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Eight(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Eight",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Nine(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Nine",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Ten(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Ten",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapIPhone14Eleven(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("iPhone 14 - Eleven",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapFrameFifty(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Frame Fifty",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapImagesTabContainer(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "Images - Tab Container",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCarNews(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Car News",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapReviewpage(context);
                          }, child: Container(decoration: AppDecoration.fill1,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding:  EdgeInsets.only(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("Review page",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: (20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding:  EdgeInsets.only(top: 5),
                                        child: Divider(
                                            height: (1),
                                            thickness: (1),
                                            color: appTheme.blueGray400))
                                  ])))
                          ]))))
                ]))));
  }

  /// Navigates to the welcomeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the welcomeScreen.
  onTapWelcome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomeScreen);
  }

  /// Navigates to the carDetail2OverviewTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetail2OverviewTabContainerScreen.
  onTapCarDetail2OverviewTabContainer(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.carDetail2OverviewTabContainerScreen);
  }

  /// Navigates to the carDetailPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carDetailPageScreen.
  onTapCarDetailPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carDetailPageScreen);
  }

  /// Navigates to the priceBreakupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the priceBreakupScreen.
  onTapPriceBreakup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceBreakupScreen);
  }

  /// Navigates to the sdsfScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sdsfScreen.
  onTapSdsf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sdsfScreen);
  }

  /// Navigates to the santroScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the santroScreen.
  onTapSantro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.santroScreen);
  }

  /// Navigates to the formPopUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the formPopUpScreen.
  onTapFORMPOPUP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.formPopUpScreen);
  }

  /// Navigates to the frame37874Screen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frame37874Screen.
  onTapFrame37874(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frame37874Screen);
  }

  /// Navigates to the homapageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homapageScreen.
  onTapHomapage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homapageScreen);
  }

  /// Navigates to the searchPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the searchPageScreen.
  onTapSearchpage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchPageScreen);
  }

  /// Navigates to the newCarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the newCarScreen.
  onTapNewCar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCarScreen);
  }

  /// Navigates to the iphone14OneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14OneScreen.
  onTapIPhone14One(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14OneScreen);
  }

  /// Navigates to the iphone14TwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14TwoScreen.
  onTapIPhone14Two(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TwoScreen);
  }

  /// Navigates to the splashOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the splashOneScreen.
  onTapSplashOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashOneScreen);
  }

  /// Navigates to the splashTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the splashTwoScreen.
  onTapSplashTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashTwoScreen);
  }

  /// Navigates to the splashThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the splashThreeScreen.
  onTapSplashThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashThreeScreen);
  }

  /// Navigates to the logInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the logInScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpScreen.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the logInTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the logInTwoScreen.
  onTapLoginTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInTwoScreen);
  }

  /// Navigates to the frameOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameOneScreen.
  onTapFrameOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameOneScreen);
  }

  /// Navigates to the logInOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the logInOneScreen.
  onTapLoginOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInOneScreen);
  }

  /// Navigates to the frameThirteenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameThirteenScreen.
  onTapFrameThirteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameThirteenScreen);
  }

  /// Navigates to the bodyTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bodyTypeScreen.
  onTapBodyType(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bodyTypeScreen);
  }

  /// Navigates to the makeBrandScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the makeBrandScreen.
  onTapMakeBrand(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.makeBrandScreen);
  }

  /// Navigates to the sortByScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sortByScreen.
  onTapSortBy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sortByScreen);
  }

  /// Navigates to the budgetScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the budgetScreen.
  onTapBudget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetScreen);
  }

  /// Navigates to the fuelTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the fuelTypeScreen.
  onTapFueltype(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fuelTypeScreen);
  }

  /// Navigates to the transmissionTypeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the transmissionTypeScreen.
  onTapTransmissionType(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transmissionTypeScreen);
  }

  /// Navigates to the seatingCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the seatingCapacityScreen.
  onTapSeatingCapacity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.seatingCapacityScreen);
  }

  /// Navigates to the airbagsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the airbagsScreen.
  onTapAirbags(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.airbagsScreen);
  }

  /// Navigates to the mileageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the mileageScreen.
  onTapMileage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mileageScreen);
  }

  /// Navigates to the safeyRatingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the safeyRatingsScreen.
  onTapSafeyRatings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safeyRatingsScreen);
  }

  /// Navigates to the engineCapacityScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the engineCapacityScreen.
  onTapEnginecapacity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.engineCapacityScreen);
  }

  /// Navigates to the powerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the powerScreen.
  onTapPower(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.powerScreen);
  }

  /// Navigates to the torqueScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the torqueScreen.
  onTapTorque(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.torqueScreen);
  }

  /// Navigates to the coloursScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the coloursScreen.
  onTapColours(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coloursScreen);
  }

  /// Navigates to the additionalFeaturesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the additionalFeaturesScreen.
  onTapAdditionalFeatures(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.additionalFeaturesScreen);
  }

  /// Navigates to the frameSixtysixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameSixtysixScreen.
  onTapFrameSixtySix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSixtysixScreen);
  }

  /// Navigates to the priceNavbarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the priceNavbarScreen.
  onTapPriceNavbar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.priceNavbarScreen);
  }

  /// Navigates to the compareNavbarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the compareNavbarScreen.
  onTapCompareNavbar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.compareNavbarScreen);
  }

  /// Navigates to the aScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the aScreen.
  onTapA(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aScreen);
  }

  /// Navigates to the bTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the bTabContainerScreen.
  onTapBTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bTabContainerScreen);
  }

  /// Navigates to the nScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the nScreen.
  onTapN(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.nScreen);
  }

  /// Navigates to the usedCarsContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the usedCarsContainerScreen.
  onTapUsedcarsContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usedCarsContainerScreen);
  }

  /// Navigates to the frameFortyfiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameFortyfiveScreen.
  onTapFrameFortyFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfiveScreen);
  }

  /// Navigates to the frameFortyfourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameFortyfourScreen.
  onTapFrameFortyFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFortyfourScreen);
  }

  /// Navigates to the photosScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the photosScreen.
  onTapPhotos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.photosScreen);
  }

  /// Navigates to the usedCarPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the usedCarPageScreen.
  onTapUsedcarPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.usedCarPageScreen);
  }

  /// Navigates to the sellCarstwoOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoOneScreen.
  onTapSellCarsTwoOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoOneScreen);
  }

  /// Navigates to the sellCarstwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoScreen.
  onTapSellCarsTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoScreen);
  }

  /// Navigates to the sellCarstwoTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoTwoScreen.
  onTapSellCarsTwoTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoTwoScreen);
  }

  /// Navigates to the sellCarstwoFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoFourScreen.
  onTapSellCarsTwoFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoFourScreen);
  }

  /// Navigates to the sellCarstwoSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoSixScreen.
  onTapSellCarsTwoSix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoSixScreen);
  }

  /// Navigates to the sellCarstwoThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoThreeScreen.
  onTapSellCarsTwoThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoThreeScreen);
  }

  /// Navigates to the sellCarstwoSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoSevenScreen.
  onTapSellCarsTwoSeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoSevenScreen);
  }

  /// Navigates to the sellCarsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsOneScreen.
  onTapSellCarsOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsOneScreen);
  }

  /// Navigates to the sellCarsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarsScreen.
  onTapSellCars(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarsScreen);
  }

  /// Navigates to the sellCarstwoFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the sellCarstwoFiveScreen.
  onTapSellCarsTwoFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sellCarstwoFiveScreen);
  }

  /// Navigates to the emiCalculatorScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the emiCalculatorScreen.
  onTapEmiCalculator(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.emiCalculatorScreen);
  }

  /// Navigates to the iphone14FourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14FourScreen.
  onTapIPhone14Four(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14FourScreen);
  }

  /// Navigates to the iphone14FiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14FiveScreen.
  onTapIPhone14Five(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14FiveScreen);
  }

  /// Navigates to the iphone14SixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14SixScreen.
  onTapIPhone14Six(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14SixScreen);
  }

  /// Navigates to the iphone14SevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14SevenScreen.
  onTapIPhone14Seven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14SevenScreen);
  }

  /// Navigates to the iphone14EightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14EightScreen.
  onTapIPhone14Eight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14EightScreen);
  }

  /// Navigates to the iphone14NineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14NineScreen.
  onTapIPhone14Nine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14NineScreen);
  }

  /// Navigates to the iphone14TenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14TenScreen.
  onTapIPhone14Ten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14TenScreen);
  }

  /// Navigates to the iphone14ElevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the iphone14ElevenScreen.
  onTapIPhone14Eleven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ElevenScreen);
  }

  /// Navigates to the frameFiftyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the frameFiftyScreen.
  onTapFrameFifty(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFiftyScreen);
  }

  /// Navigates to the imagesTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the imagesTabContainerScreen.
  onTapImagesTabContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.imagesTabContainerScreen);
  }

  /// Navigates to the carNewsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the carNewsScreen.
  onTapCarNews(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.carNewsScreen);
  }

  /// Navigates to the reviewPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the reviewPageScreen.
  onTapReviewpage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewPageScreen);
  }
}
