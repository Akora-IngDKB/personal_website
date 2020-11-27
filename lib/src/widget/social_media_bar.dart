import 'package:flutter/material.dart';
import 'package:personal_web/src/social_icons.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      margin: const EdgeInsets.only(left: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal.withOpacity(0.3), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(SocialIcons.github),
          SizedBox(height: 30),
          Icon(SocialIcons.linkedin),
          SizedBox(height: 30),
          Icon(SocialIcons.twitter),
          SizedBox(height: 30),
          Icon(SocialIcons.instagram),
          SizedBox(height: 30),
          Icon(SocialIcons.facebook),
          SizedBox(height: 30),
          Icon(SocialIcons.medium),
          SizedBox(height: 30),
          Icon(SocialIcons.play_store),
          SizedBox(height: 30),
          Icon(SocialIcons.whatsapp),
        ],
      ),
    );
  }
}
