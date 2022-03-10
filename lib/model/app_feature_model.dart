/// Description: 
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
class AppFeatureModel {
  // 标题
  String featureTitle = "";
  // 描述
  String featureDescription = "";
  // 图片
  String imagePath = "";

  AppFeatureModel();

  // AppFeatureModel({required this.featureTitle, required this.featureDescription, required this.imagePath});

  void setFeatureTitle(String getTitle) {
    featureTitle = getTitle;
  }

  void setFeatureDescription(String getDescription) {
    featureDescription = getDescription;
  }

  void setImagePath(String getImagePath) {
    imagePath = getImagePath;
  }

  String getFeatureTitle() {
    return featureTitle;
  }

  String getFeatureDescription() {
    return featureDescription;
  }

  String getImagePath() {
    return imagePath;
  }
}
