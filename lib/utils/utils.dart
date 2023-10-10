import 'package:url_launcher/url_launcher_string.dart';

class Utils {
  const Utils._();

  static Future<void> launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }
}
