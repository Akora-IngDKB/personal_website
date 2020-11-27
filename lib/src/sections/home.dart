import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_web/src/utils/url_helper.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "¡Hola! Soy",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Akora Ing. DKB',
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Mobile App Developer & AI Engineer',
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "I build neat, cool and scalable mobile apps with Flutter and I'm an aspiring deep learning engineer."
                  '\nI love to learn and build new stuff that are beneficial to the community and cool to work on.'
                  '\nI also have great interest in the open source community.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    letterSpacing: 1.2,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 30),
                OutlineButton(
                  child: Text(
                    'Hire Me',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: () {
                    UrlHelper.launchUrl("mailto:akoraingdkb@gmail.com");
                  },
                  borderSide: BorderSide(color: Colors.teal),
                  shape: StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  splashColor: Colors.teal.withOpacity(0.1),
                ),
              ],
            ),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 8,
            child: Transform.rotate(
              angle: 2 * pi - (pi / 6),
              child: Image.asset(
                'assets/images/DKB.png',
                fit: BoxFit.cover,
                width: 500,
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
