import 'package:flutter/material.dart';
import 'page/LoginPage.dart';

void main() {
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
