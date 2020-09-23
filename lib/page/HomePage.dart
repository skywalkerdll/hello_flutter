import 'package:flutter/material.dart';
import '../base/drawer.dart';
import '../base/bottomNav.dart';
import '../page/ImageListPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          //backgroundColor: Colors.transparent, //把scaffold的背景色改成透明
          appBar: AppBar(
            centerTitle: true,
            //backgroundColor: Colors.transparent, //把appbar的背景色改成透明
            title: Text('主页'),
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: '菜单',
            //   onPressed: () => print('you click menu'),
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '搜索',
                onPressed: () => print('search'),
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.red,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.payment)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.card_travel)),
              ],
            ),
            // elevation: 0.0, //阴影
          ),
          body: TabBarView(
            children: [
              Icon(Icons.payment, size: 120, color: Colors.black12),
              Icon(Icons.directions_bike, size: 120, color: Colors.black),
              ImageListPage()
            ],
          ),
          drawer: MyDrawer(),
          bottomNavigationBar: BottomNav(),
        ));
  }
}
