import 'dart:math';

import 'package:flutter/material.dart';

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
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.4,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Akora Ing. DKB',
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
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
                  'Lorem ipsum, dolor sit amet consectetur adipisicing elit.'
                  ' Perspiciatis quia eligendi rerum modi sapiente totam ducimus neque quod eos cum,'
                  ' libero quas aliquid repellat a, nulla unde dolores illum deserunt.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
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
