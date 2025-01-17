import 'package:flutter_landingpage/model/app_feature_model.dart';
import 'package:flutter_landingpage/model/feature_tile_model.dart';
import 'package:flutter_landingpage/model/testimonial_model.dart';
import 'package:flutter/material.dart';

/// All the data

Color headerColor = Colors.black87;

/// One
String playStoreUrl =
    "https://play.google.com/store/apps/details?id=com.taffyapps.marksplus";
String appHeading = "芝舟开源 - 共享技术";
String appDescription = "我们提供App开发，企业服务";

/// Two
String maintitle = "项目构建，代码管理";
String maindescription = "提供代码托管，原创gogs集成vscoe，提供vscode在线查看代码。";

String closingTitle = "Making Quiz/Test Was Never This EASY";
String closingDescription = "so what are you waiting for, Download Now";
String coverImage = "coverImage.jpg";

String finaCalltoAction = "What are you waiting for? Download today!";
String youtubeVideoUrl =
    "https://www.youtube.com/channel/UCsPdgUIoOBTBI1UmulW1pdw";

String aboutUsUrl = "https://www.linkedin.com/in/lamsanskar/";
String PrivacypolicyUrl = "";
String ContactUsUrl = "";

List<TestimonialModel> getTestimonials() {
  List<TestimonialModel> myAppTestimonials = <TestimonialModel>[];
  TestimonialModel testimonialModel = TestimonialModel();

  /// setting the testimonials

  //1
  testimonialModel.setDescription(
      "My experience with markszen was awesome as I saw many people were enjoying I give it a try and it's really awesome I make daily test and it's fun how easily I can make test and creating test is easy I will definitely recommend it to all");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Razib palash");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = TestimonialModel();

  //2
  testimonialModel.setDescription(
      "My experience with markszen was awesome as I saw many people were enjoying I give it a try and it's really awesome I make daily test and it's fun how easily I can make test and creating test is easy I will definitely recommend it to all");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Razib palash");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = TestimonialModel();

  //3
  testimonialModel.setDescription(
      "My experience with markszen was awesome as I saw many people were enjoying I give it a try and it's really awesome I make daily test and it's fun how easily I can make test and creating test is easy I will definitely recommend it to all");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Razib palash");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = TestimonialModel();

  //4
  testimonialModel.setDescription(
      "My experience with markszen was awesome as I saw many people were enjoying I give it a try and it's really awesome I make daily test and it's fun how easily I can make test and creating test is easy I will definitely recommend it to all");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Razib palash");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = TestimonialModel();

  //5
  testimonialModel.setDescription(
      "My experience with markszen was awesome as I saw many people were enjoying I give it a try and it's really awesome I make daily test and it's fun how easily I can make test and creating test is easy I will definitely recommend it to all");
  testimonialModel.setRating(4);
  testimonialModel.setImageAssetPath("testimonial.jpg");
  testimonialModel.setName("Razib palash");
  testimonialModel.setDesignation("Educator");
  myAppTestimonials.add(testimonialModel);
  //
  testimonialModel = TestimonialModel();

  return myAppTestimonials;
}

List<AppFeatureModel> getAppFeatures() {
  List<AppFeatureModel> appFeatures = <AppFeatureModel>[];
  AppFeatureModel appFeatureModel = AppFeatureModel();

  // setting up the features

  //1
  appFeatureModel.setImagePath("header_screenshot.jpg");
  appFeatureModel.setFeatureTitle("Making Test Was Never So Easy");
  appFeatureModel.setFeatureDescription(
      "So how does an app can make test when people spend hours making one on PC or Laptop, because these .");
  appFeatures.add(appFeatureModel);

  appFeatureModel = AppFeatureModel();

  //2
  appFeatureModel.setImagePath("header_screenshot.jpg");
  appFeatureModel.setFeatureTitle("Get Detailed Result Analysis");
  appFeatureModel.setFeatureDescription(
      "Get Detailed analysis of each and every question you attempted with correct answer to check what you did wrong and what you did right.");
  appFeatures.add(appFeatureModel);

  appFeatureModel = AppFeatureModel();

  //3
  appFeatureModel.setImagePath("header_screenshot.jpg");
  appFeatureModel.setFeatureTitle("Make Study Fun With Markszen");
  appFeatureModel.setFeatureDescription(
      "Student Learn Quicker and Easier when learning is fun.");
  appFeatures.add(appFeatureModel);

  appFeatureModel = AppFeatureModel();

  return appFeatures;
}

List<FeatureTileModel> getFeaturesTiles1() {
  List<FeatureTileModel> tileFeatures = <FeatureTileModel>[];
  FeatureTileModel featureTileModel = FeatureTileModel();

  //1
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("Create Unlimited Quiz");
  featureTileModel.setDescription(
      "Markszen Free Plan comes with unlimited quiz create as much quiz you want.");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  //2
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("Shuffle questions answer");
  featureTileModel.setDescription(
      "Answers of question are shuffled so no cheating allowed");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  //3
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("See Detailed Result Analysis");
  featureTileModel.setDescription(
      "All student detailed result analysis is generated and student performance is send to Parents instantly");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  return tileFeatures;
}

List<FeatureTileModel> getFeaturesTiles2() {
  List<FeatureTileModel> tileFeatures = <FeatureTileModel>[];
  FeatureTileModel featureTileModel = FeatureTileModel();

  //4
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("5 User Categories");
  featureTileModel.setDescription(
      "Personalized Interface for all use cases, Either its Teacher, Student Parents Or School Admin");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  //5
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("Create Daily Test");
  featureTileModel.setDescription(
      "Teachers can create daily test to test student performance on a regular basis.");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  //6
  featureTileModel.setImagePath("header_screenshot.jpg");
  featureTileModel.setTitle("Guest Mode");
  featureTileModel.setDescription(
      "No need to create account get quiz code and lets get started, No Login Required!");
  tileFeatures.add(featureTileModel);

  featureTileModel = FeatureTileModel();

  return tileFeatures;
}
