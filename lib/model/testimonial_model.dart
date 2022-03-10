class TestimonialModel {
  String description = "";
  String name = "";
  String designation = "";
  String imageAssetName = "";
  double rating = 0;

  TestimonialModel();

  // TestimonialModel(
  //     {required this.description,
  //     required this.name,
  //     required this.designation,
  //     required this.imageAssetName,
  //     required this.rating});

  void setDescription(String getDescription) {
    description = getDescription;
  }

  void setName(String getName) {
    name = getName;
  }

  void setDesignation(String getDesignation) {
    designation = getDesignation;
  }

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetName = getImageAssetPath;
  }

  void setRating(double getRating) {
    rating = getRating;
  }

  String getDescription() {
    return description;
  }

  String getName() {
    return name;
  }

  String getDesignation() {
    return designation;
  }

  String getImageAssetName() {
    return imageAssetName;
  }

  double getRating() {
    return rating;
  }
}
