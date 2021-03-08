import 'package:flutter/material.dart';
import 'settingPage.dart';
import "package:work_001/API_Get_Post/testAPI.dart";
import 'columLayout.dart';
import 'package:work_001/API_Get_Post/webview2.dart';
//新增加的页面

class fivescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search for a GP"),),
      body: webview2(),
       
      
    );
  }
}
