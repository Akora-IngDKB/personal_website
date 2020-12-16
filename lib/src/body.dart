import 'package:flutter/material.dart';
import 'package:personal_web/src/components/nav_bar.dart';
import 'package:personal_web/src/sections/about/about.dart';
import 'package:personal_web/src/sections/home/home.dart';

class PageBody extends StatefulWidget {
  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  int pageIndex = 0;
  final pages = [HomeSection(), AboutSection()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(
          onItemSelected: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: kThemeAnimationDuration,
            child: pages[pageIndex],
          ),
        ),
      ],
    );
  }
}
