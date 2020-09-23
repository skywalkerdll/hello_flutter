//import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'page/LoginPage.dart';

void main() {
  // if (Platform.isAndroid) {
  //   SystemChrome.setSystemUIOverlayStyle(
  //       SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  // }
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      home: LoginPage(), //首页为登录页
      theme: ThemeData(
        primarySwatch: Colors.blue, //主题颜色
      ),
    );
  }
}
