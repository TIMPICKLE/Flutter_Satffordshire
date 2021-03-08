import 'package:flutter/material.dart';
import 'package:work_001/API_Get_Post/testAPI2.dart';
import 'package:work_001/firebase_Data/getdata.dart';
import 'package:work_001/swiper/swiper.dart';
//这个页面是 导航栏目 home icon所指向的页面

class twoscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NEWS"),),
      body: getdata(),
      // 这边我只是搭了一个脚手架 但是还没有完全写完页面 所以之后还需要修稿的
      //记得最好去导航栏 去修改一些图标 icon
       //body: SwiperView(),
    
    );
  }
}
