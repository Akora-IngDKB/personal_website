import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  static Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, enableJavaScript: true);
    }
  }
}
