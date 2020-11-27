import 'package:flutter/material.dart';
import 'package:personal_web/src/utils/social_icons.dart';
import 'package:personal_web/src/utils/url_helper.dart';

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
            onTap: () {
              UrlHelper.launchUrl('https://github.com/Akora-IngDKB');
            },
            child: Icon(
              SocialIcons.github,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://www.linkedin.com/in/kwesi-buabeng-debrah/',
              );
            },
            child: Icon(
              SocialIcons.linkedin,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                "mailto:akoraingdkb@gmail.com?subject=Hello%20DKB",
              );
            },
            child: Icon(
              SocialIcons.envelope,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://twitter.com/Akora_IngDKB');
            },
            child: Icon(
              SocialIcons.twitter,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://www.instagram.com/akora_ingdkb/');
            },
            child: Icon(
              SocialIcons.instagram,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://web.facebook.com/kwesi.buabengdebrah',
              );
            },
            child: Icon(
              SocialIcons.facebook,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://medium.com/@debrahkwesibuabeng2');
            },
            child: Icon(
              SocialIcons.medium,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                'https://play.google.com/store/apps/developer?id=Akora+Ing.+DKB',
              );
            },
            child: Icon(
              SocialIcons.play_store,
              color: Colors.teal.withOpacity(0.75),
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl('https://wa.link/l79tfa');
            },
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
