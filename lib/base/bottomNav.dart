import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _currentIndex = 0;
  void onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        onTap: onTapHandler,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.history), label: '历史'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '单元'),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: '盒子'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: '卡包2'),
        ]);
  }
}
