import 'package:flutter/material.dart';
import 'package:work_001/API_Get_Post/webview.dart';
import 'showInformation.dart';
import 'columLayout.dart';
import 'package:work_001/API_Get_Post/testAPI3.dart';
//这个页面是 导航栏目 home icon所指向的页面

class threescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Disease search"),),
      //body: StarWarsData2(),
      // 这边我只是搭了一个脚手架 但是还没有完全写完页面 所以之后还需要修稿的
      body: webview(),
    );
  }
}
