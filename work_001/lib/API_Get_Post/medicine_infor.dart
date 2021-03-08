import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';//需要里面的json方法

import 'package:http/http.dart' as http;

 class medinfor extends StatefulWidget {
   @override
   _medinforState createState() => _medinforState();
 }
 
 class _medinforState extends State<medinfor> {
   final String host = "https://jsonplaceholder.typicode.com/posts";
   List datas;
@override
   void initState() { 
     super.initState();
   }

  getData()async{//异步处理 所以使用async 
   var response = await  http.get(host);
  
   setState(() {
      datas= jsonDecode(response.body);
   });
  }

   @override
   Widget build(BuildContext context) {
      getData();
     return Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context,idx) {
          var data = datas[idx];
          return ListTile(
            title: Text(data["id"].toString()),
         //这边 要来写药物的详细信息
         
          );
        },
      ),
     );
   }
 }