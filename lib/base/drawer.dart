import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //抽屉里面一个list部件
        padding: EdgeInsets.all(0), //顶部padding为0
        children: <Widget>[
          //所有子部件
          UserAccountsDrawerHeader(
            //用户信息栏
            accountName: Text("skywalker"),
            accountEmail: Text("yanhuashashou@sina.com"),
            currentAccountPicture: CircleAvatar(
              //头像
              backgroundImage: NetworkImage(
                  'https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg'),
            ),
            otherAccountsPictures: <Widget>[
              //其他账号头像
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg'),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://b-ssl.duitang.com/uploads/item/201707/01/20170701155239_2E8zH.jpeg"),
              )
            ],
            onDetailsPressed: () {}, //下拉箭头
            decoration: BoxDecoration(
              //背景图片
              image: DecorationImage(
                  image: NetworkImage(
                      'http://n.sinaimg.cn/eladies/24_img/upload/240d3b09/566/w1300h866/20200828/d207-iyhvyva5953900.jpg'),
                  fit: BoxFit.cover //图片不变性裁剪居中显示
                  ),
            ),
          ),
          ListTile(
              //下部标题
              title: Text("设置"),
              trailing: Icon(Icons.settings)),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
          ),
          ListTile(
              title: Text('设置'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios)),
          Divider(),
          ListTile(
            leading: new CircleAvatar(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://b-ssl.duitang.com/uploads/item/201707/01/20170701155239_2E8zH.jpeg"),
              ),
            ),
            title: Text("其他用户"),
          ),
          ListTile(
            leading: new CircleAvatar(
              child: new Icon(Icons.check_box),
            ),
            title: Text("任务清单"),
          ),
          ListTile(
            leading: Icon(Icons.wifi),
            title: new Text('无线网络'),
            subtitle: new Text('100MB/S'),
          ),
        ],
      ),
    );
  }
}
