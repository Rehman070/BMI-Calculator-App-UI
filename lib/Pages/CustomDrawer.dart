import 'package:bmi_calculator_ui/Pages/About.dart';
import 'package:bmi_calculator_ui/Pages/Settings.dart';
import 'package:bmi_calculator_ui/Pages/Share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'HomePage.dart';
import 'SendFeedback.dart';
import 'package:launch_review/launch_review.dart';

class CustomMenuDrawer extends StatefulWidget {
  CustomMenuDrawer({Key? key}) : super(key: key);

  @override
  State<CustomMenuDrawer> createState() => _CustomMenuDrawerState();
}

class _CustomMenuDrawerState extends State<CustomMenuDrawer> {
  List<ScreenHiddenDrawer> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Home',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan)),
          HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Settings',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan)),
          Settings()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'About App',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan)),
          AbouutApp()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Share App',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan),
              onTap: () {
                FlutterShare.share(
                    title: 'BMI Calculator',
                    linkUrl:
                        'https://play.google.com/store/apps/details?id=com.nividata.bmi_calculator');
              }),
          const HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Rate App',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan),
              onTap: () {
                LaunchReview.launch(
                  androidAppId: "com.example.bmi_calculator_ui"
                );
              }),
          const HomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Send Feedback',
              colorLineSelected: Colors.deepPurple,
              baseStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              selectedStyle: const TextStyle(color: Colors.cyan)),
          SendFeedback()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        slidePercent: 60,
        elevationAppBar: 0,
        isTitleCentered: false,
        backgroundColorAppBar: Colors.black,
        initPositionSelected: 0,
        actionsAppBar: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wb_sunny,
              ))
        ],
        backgroundMenu: const DecorationImage(
            image: AssetImage('Assets/Images/BMI.png'), fit: BoxFit.cover),
        screens: pages,
        backgroundColorMenu: Colors.transparent);
  }
}
