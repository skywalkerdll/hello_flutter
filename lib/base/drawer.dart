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
                    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1467001587,2827454898&fm=26&gp=0.jpg"),
              )
            ],
            onDetailsPressed: () {}, //下拉箭头
            decoration: BoxDecoration(
              //背景图片
              image: DecorationImage(
                  image: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1601568133306&di=8977ee985ce6bedb474901de7b2c9765&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F0dd7912397dda144dac4acc9b2b7d0a20df486f8.jpg'),
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
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1601568303628&di=f5b5cd3c39ba33dd2d7dad5d345e4d00&imgtype=0&src=http%3A%2F%2Fimg.article.pchome.net%2F00%2F38%2F95%2F14%2Fpic_lib%2Fs960x639%2Ftqyb%2520%252810%2529s960x639.JPG"),
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
