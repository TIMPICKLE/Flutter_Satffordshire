import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:work_001/background/home.dart';
import 'bottom_navgation_Widget.dart';
import "pages/search_bar_demo.dart"; 
import 'pages/settingPage.dart';
import 'frosted_glass_demo.dart';
import "pages/jump.dart";
import 'package:work_001/SignIn/signIn.dart';
import 'package:work_001/firebase_Data/getdata.dart';


import 'package:http/http.dart' as http;

void main()=> runApp(new Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title:'Flutter bottomNavigationBar',
      theme:ThemeData.light(),
      home:SplashPage()
      
    );
  }
}
//DOC文档说明
//Doc1 此 .dart项目是主入口 更改home属性的内容。现在cycle1 用于测试导航栏
//Doc2 测试二 用于测试毛玻璃特效 frosted—class-demo.Dart 
//在flutter中 记得组件套组件 每个组件都有自己的属性 那么一般来说 都是tittle：text文本 theme：ThemeData(调用包里的内容)
//Doc3 此轮测试中  翻译程序暂时不可使用