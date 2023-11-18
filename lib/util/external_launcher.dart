import "package:my_movie_list_v2/core/config/getter.dart";
import "package:url_launcher/url_launcher.dart";

class CustomUrlLauncher {
  static Future<bool> launch({required String? url, LaunchMode mode = LaunchMode.platformDefault}) async {
    try {
      if (url == null) return false;

      final result = await launchUrl(Uri.parse(url), mode: mode);

      return result;
    } catch (e) {
      $logger.e(">> error: $e");
      return false;
    }
  }
}
