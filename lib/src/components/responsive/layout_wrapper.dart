import 'package:flutter/material.dart';
import 'package:personal_web/src/components/responsive/screen_type_layout.dart';
import 'package:personal_web/src/main_page.dart';

class LayoutWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobilePage(),
      tablet: MainPage(),
    );
  }
}
