import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  final items = [
    'Home',
    'About',
    'Experience',
    'Projects',
    'Resume',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      child: Row(
        children: [
          Spacer(),
          RichText(
            text: TextSpan(
              text: 'Akora I',
              style: textStyle.copyWith(color: Colors.black.withOpacity(0.75)),
              children: [
                TextSpan(
                  text: 'ng. DKB',
                  style: textStyle.copyWith(color: Colors.teal),
                ),
              ],
            ),
          ),
          Spacer(),
          ...items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 80),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = items.indexOf(item);
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item, style: textStyle),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 2,
                      width: 20,
                      color: selectedIndex == items.indexOf(item)
                          ? Colors.white
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          Spacer(),
        ],
      ),
    );
  }
}
