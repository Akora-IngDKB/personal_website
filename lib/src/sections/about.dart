import 'package:flutter/material.dart';
import 'package:personal_web/src/components/typewriter.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection>
    with TickerProviderStateMixin {
  static bool showAbout = false;
  static bool showStack1 = false;
  static bool showStack2 = false;

  final stack = [
    'Dart (Flutter)',
    'Java (Android)',
    'Python (TensorFlow)',
    'Javascript (Node.js)',
    'Firebase',
    'MySQL',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 8,
            child: Image.asset('assets/images/man.png'),
          ),
          SizedBox(width: 36),
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
                    'Who am I?',
                    duration: const Duration(seconds: 1),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.4,
                    ),
                    onEnd: () {
                      setState(() {
                        showAbout = true;
                      });
                    },
                  ),
                  Container(
                    width: 60,
                    height: 2,
                    margin: const EdgeInsets.only(top: 4, bottom: 16),
                    color: Colors.white,
                  ),
                  if (showAbout)
                    Typewriter(
                      "Hello! I'm Debrah Kwesi Buabeng (DKB), an electrical engineering student and software developer.\n\n"
                      'I love to create performant and interesting stuff that are beneficial to the community.\n'
                      'I enjoy learning and exploring new areas in the technologies I work with and even the ones outside my stack.\n\n'
                      "I'm a final year BSc Electrical and Electronic Engineering student at the Kwame Nkrumah University of Science and Technology.",
                      duration: const Duration(seconds: 10),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 1.2,
                        height: 1.3,
                      ),
                      onEnd: () {
                        setState(() {
                          showStack1 = true;
                        });
                      },
                    ),
                  if (showStack1) ...[
                    SizedBox(height: 54),
                    Typewriter(
                      'What do I work with?',
                      duration: const Duration(seconds: 1),
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.4,
                      ),
                      onEnd: () {
                        setState(() {
                          showStack2 = true;
                        });
                      },
                    ),
                    Container(
                      width: 60,
                      height: 2,
                      margin: const EdgeInsets.only(top: 4, bottom: 16),
                      color: Colors.white,
                    ),
                  ],
                  if (showStack2)
                    Wrap(
                      spacing: 80,
                      runSpacing: 12,
                      children: stack.map<Widget>((s) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Typewriter(
                              s,
                              duration: const Duration(seconds: 1),
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 1.4,
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                ],
              ),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
