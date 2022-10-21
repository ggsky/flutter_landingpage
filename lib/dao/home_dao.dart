import 'package:flutter_landingpage/dao/api.dart';
import 'package:flutter_landingpage/model/app_feature_model.dart';
import 'package:flutter_landingpage/utils/request.dart';

class HomeDao {
  static Future<AppFeatureModel> getHome() async {
    var response = await RequestUtil().get('/category');
    return AppFeatureModel.fromJson(response);
  }
}
