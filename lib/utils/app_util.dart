import 'package:url_launcher/url_launcher_string.dart';

/// Description: app工具类
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
class AppUtil {

  //打开链接
  static void launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
