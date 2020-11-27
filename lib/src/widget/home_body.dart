import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/home.dart';
import 'package:personal_web/src/widget/nav_bar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Navbar(),
        Expanded(child: HomeSection()),
      ],
    );
  }
}
