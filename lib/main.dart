import 'package:applandingpage/pages/home_page.dart';
import 'package:flutter/material.dart';

/// Description: 入口
/// Time       : 03/10/2022 Thursday
/// Author     : liuyuqi.gov@msn.cn
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}