import 'package:flutter/material.dart';
import 'package:personal_web/src/components/nav_bar.dart';
import 'package:personal_web/src/sections/home.dart';

class PageBody extends StatelessWidget {
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
