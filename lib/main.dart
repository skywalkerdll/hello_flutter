import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/LoginPage.dart';

void main() {
  if (Platform.isAndroid) {
    //SystemChrome.setEnabledSystemUIOverlays([]); //全屏，不显示状态栏，也不现实底部虚拟键盘
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //状态栏透明
        statusBarIconBrightness: Brightness.dark));
    //light:黑色图标 dark：白色图标
    //在此处设置statusBarIconBrightness为全局设置
  }

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      //color: Colors.blue,
      home: LoginPage(), //首页为登录页
      theme: ThemeData(
        primarySwatch: Colors.blue, //主题颜色
      ),
    );
  }
}
