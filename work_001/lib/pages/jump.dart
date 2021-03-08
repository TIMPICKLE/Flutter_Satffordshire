import 'package:flutter/material.dart';
import 'package:work_001/SignIn/signIn.dart';
import 'dart:ui';
import 'package:work_001/bottom_navgation_Widget.dart';
import 'package:work_001/SignIn/PageForLogin.dart';

class SplashPage extends StatelessWidget {
  final splashUrl =
      'https://d-paper.i4.cn/max/2017/10/10/11/1507607392765_431742.jpg';

  @override
  Widget build(BuildContext context) {
  
    return Stack(
      alignment: Alignment(0, 0.75),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(splashUrl),fit: BoxFit.fill)),
          
        ),
        GestureDetector(
          // 设置点击事件
          onTap: () {
            // 使用 Navigator 跳转页面
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return PageForLogin();
            }));
          },
          child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                  colors: <Color>[Colors.black, Colors.white],
                ),
              ),
              child: Center(
                  child: Text(
                "Traditional Chinese Medicine Teacher",
                style: TextStyle(color: Colors.green, fontSize: 16),
              ))),
        ),
      ],
    );
  }
}

 