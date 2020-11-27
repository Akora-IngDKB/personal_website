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
    'Blogs',
    'Resume',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Akora I',
                style: textStyle.copyWith(
                  color: Colors.black.withOpacity(0.75),
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: 'ng. DKB',
                    style: textStyle.copyWith(color: Colors.teal, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items.map((item) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = items.indexOf(item);
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item,
                        style: textStyle.copyWith(
                          color: textStyle.color.withOpacity(
                            selectedIndex == items.indexOf(item) ? 1.0 : 0.75,
                          ),
                        ),
                      ),
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
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
