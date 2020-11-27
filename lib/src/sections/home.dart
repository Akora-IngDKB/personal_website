import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_web/src/components/typewriter.dart';
import 'package:personal_web/src/utils/url_helper.dart';

class HomeSection extends StatefulWidget {
  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection>
    with SingleTickerProviderStateMixin {
  static bool helloSeen = false;
  static bool nameSeen = false;
  static bool positionSeen = false;
  static bool abstractSeen = false;

  static bool showName = false;
  static bool showPosition = false;
  static bool showAbstract = false;
  bool showHireMe = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 6,
            child: AnimatedSize(
              vsync: this,
              duration: kThemeAnimationDuration,
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Typewriter(
                    '¡Hola! Soy...',
                    animate: !helloSeen,
                    textStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.4,
                    ),
                    onEnd: () {
                      setState(() {
                        showName = true;
                        helloSeen = true;
                      });
                    },
                  ),
                  if (showName) ...[
                    SizedBox(height: 16),
                    Typewriter(
                      'Akora Ing. DKB',
                      animate: !nameSeen,
                      textStyle: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                      onEnd: () {
                        setState(() {
                          showPosition = true;
                          nameSeen = true;
                        });
                      },
                    ),
                  ],
                  if (showPosition) ...[
                    SizedBox(height: 16),
                    Typewriter(
                      'Mobile App Developer & AI Engineer',
                      animate: !positionSeen,
                      textStyle: TextStyle(
                        color: Colors.blueGrey[900],
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      onEnd: () {
                        setState(() {
                          showAbstract = true;
                          positionSeen = true;
                        });
                      },
                    ),
                  ],
                  if (showAbstract) ...[
                    SizedBox(height: 24),
                    Typewriter(
                      "I build neat, cool and scalable mobile apps with Flutter and I'm an aspiring deep learning engineer.\n"
                      'I love to learn and build new stuff that are beneficial to the community and cool to work on.\n'
                      'I also have great interest in the open source community.',
                      animate: !abstractSeen,
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        letterSpacing: 1.2,
                        height: 1.3,
                      ),
                      onEnd: () {
                        Future.delayed(Duration(milliseconds: 500), () {
                          setState(() {
                            showHireMe = true;
                            abstractSeen = true;
                          });
                        });
                      },
                    ),
                  ],
                  if (showHireMe) ...[
                    SizedBox(height: 30),
                    _HireMeButton(),
                  ],
                ],
              ),
            ),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 8,
            child: Transform.rotate(
              angle: 2 * pi - (pi / 4),
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                    image: AssetImage('assets/images/me.png'),
                  ),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

class _HireMeButton extends StatefulWidget {
  @override
  __HireMeButtonState createState() => __HireMeButtonState();
}

class __HireMeButtonState extends State<_HireMeButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        UrlHelper.launchUrl("mailto:akoraingdkb@gmail.com");
      },
      onHover: (value) {
        if (mounted) {
          setState(() {
            hovered = value;
          });
        }
      },
      child: AnimatedContainer(
        height: 50,
        width: 160,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1.4, color: Colors.teal),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: hovered ? Colors.teal.withOpacity(1.0) : Colors.transparent,
        ),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: hovered ? Colors.white : Colors.teal,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
          child: Text(
            'Hire Me',
          ),
        ),
      ),
    );
  }
}
