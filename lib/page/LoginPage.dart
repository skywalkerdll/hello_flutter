import 'package:flutter/material.dart';
import 'package:hello_flutter/page/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController _ztNameController = new TextEditingController();
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  var _isShowClear = false; //显示清空按钮

  /// 头部log组件
  Widget buildTopWidget(BuildContext context) {
    double height = 150.0;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      //color: Colors.blue[400],
      child: Stack(
        overflow: Overflow.visible, // 超出部分显示
        children: <Widget>[
          Positioned(
            left: (width - 90) / 2.0,
            top: height - 100,
            child: Container(
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                ///阴影
                boxShadow: [
                  BoxShadow(color: Theme.of(context).cardColor, blurRadius: 4.0)
                ],

                ///形状
                //shape: BoxShape.circle,

                ///图片
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569298229946&di=ea4ffb2b140ef40035772bbcee7bbdd5&imgtype=0&src=http%3A%2F%2Fcimg2.163.com%2Fcatchimg%2F20090909%2F8112139_3.jpg'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //是否自动调整body属性控件的大小，以避免脚手架底部被覆盖
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          //autovalidateMode: true, //开启自动校验
          child: Column(
            children: <Widget>[
              buildTopWidget(context),
              // TextFormField(
              //   autofocus: true,
              //   controller: _ztNameController,
              //   decoration: InputDecoration(
              //     hintText: "账套",
              //     icon: Icon(Icons.person),
              //   ),

              //   // 校验用户名
              //   validator: (v) {
              //     return v.trim().length > 0 ? null : "请选择账套";
              //   },
              // ),
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person),
                  //尾部添加清除按钮
                  suffixIcon: (_isShowClear)
                      ? IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            // 清空输入框内容
                            _unameController.clear();
                            setState(() {
                              _isShowClear = false;
                            });
                          },
                        )
                      : null,
                ),
                onChanged: (v) {
                  if (v.length > 0) {
                    setState(() {
                      _isShowClear = true;
                    });
                  } else {
                    setState(() {
                      _isShowClear = false;
                    });
                  }
                },
                // 校验用户名
                validator: (v) {
                  return v.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                      hintText: "您的登录密码", icon: Icon(Icons.lock)),
                  obscureText: true,
                  //校验密码
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  }),
              // 登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        //padding: EdgeInsets.all(15.0),
                        child: Text(
                          "登  录",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                            if ((this._unameController.text == '002') &&
                                (this._pwdController.text == '123456')) {
                              //进入主页
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new HomePage()),
                              );
                            } else {
                              AlertDialog();
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
