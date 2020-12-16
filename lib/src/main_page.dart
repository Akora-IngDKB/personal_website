// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:personal_web/src/body.dart';
import 'package:personal_web/src/components/drawer.dart';
import 'package:personal_web/src/components/nav_bar.dart';
import 'package:personal_web/src/components/social_media_bar.dart';

class MobilePage extends StatefulWidget {
  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  int pageIndex = 0;
  final pages = [
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.amber,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MobileNavbar(),
      endDrawer: AppDrawer(
        selectedIndex: pageIndex,
        onItemSelected: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
      body: AnimatedSwitcher(
        duration: kThemeAnimationDuration,
        child: pages[pageIndex],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add the File Saver js script
    final script = html.document.createElement('script') as html.ScriptElement;
    script.src = "https://cdn.jsdelivr.net/g/filesaver.js";
    html.document.body.nodes.add(script);

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: _BackgroundPainter(), size: Size.infinite),
          PageBody(),
          Align(alignment: Alignment.centerLeft, child: SocialMediaBar()),
        ],
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    path.moveTo(size.width * 0.4, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.close();

    final paint = Paint()
      ..color = Colors.teal
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
