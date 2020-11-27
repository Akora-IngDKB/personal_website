import 'package:flutter/material.dart';
import 'package:personal_web/src/utils/social_icons.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      margin: const EdgeInsets.only(left: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal.withOpacity(0.3), width: 1.4),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.github,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.linkedin,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.envelope,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.twitter,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.instagram,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.facebook,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.medium,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.play_store,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {},
            child: Icon(
              SocialIcons.whatsapp,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
