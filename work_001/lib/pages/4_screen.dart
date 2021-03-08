import 'package:flutter/material.dart';
import 'settingPage.dart';
import "package:work_001/API_Get_Post/testAPI.dart";
import 'columLayout.dart';
//这个页面是 导航栏目 home icon所指向的页面

class fourscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings "),),
      body: colum(),
      // 这边我只是搭了一个脚手架 但是还没有完全写完页面 所以之后还需要修稿的
      
    );
  }
}
