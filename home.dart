// ignore_for_file: prefer_const_constructors
import 'package:getwidget/getwidget.dart';

import 'color.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_project/views/flags.dart';
import 'package:mqtt_project/views/stats.dart';
import 'package:mqtt_project/views/status.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int initialPage = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    status(),
    flags(),
    stats(),
  ];
  void onTab(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color().appBackGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 50,
              child: PageView(
                controller: _controller,
                children: [
                  status(),
                  flags(),
                  stats(),
                ],
              ),
            ),
            Container(
              height: 40,
              child: GFIntroScreenBottomNavigationBar(
                pageController: _controller,
                pageCount: _pages.length,
                currentIndex: initialPage,
                backButtonText: '',
                forwardButtonText: '',
                skipButtonText: '',
                doneButtonText: '',
                navigationBarHeight: 40,
                navigationBarWidth: MediaQuery.of(context).size.width,
                navigationBarColor: color().appBackGroundColor,
                showDivider: false,
                dotHeight: 10,
                dotWidth: 9,
                dotShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                activeColor: Colors.amber.shade900,
                inactiveColor: Colors.grey.shade700,
                dotMargin: EdgeInsets.symmetric(horizontal: 6),
                showPagination: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
