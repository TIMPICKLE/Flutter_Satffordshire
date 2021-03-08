import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';//需要里面的json方法

import 'package:http/http.dart' as http;
import 'medicine_infor.dart';
import 'package:work_001/Tools/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


 class MyHome extends StatefulWidget {
   @override
   _MyHomeState createState() => _MyHomeState();
 }
 
 class _MyHomeState extends State<MyHome> {
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
     return MaterialApp(



      home: Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context,idx) {
          var data = datas[idx];
          return ListTile(
            title: Text(data["title"]),
            
          subtitle: Text(data["body"]),
          //这边我最好设置一个转跳 或者转跳
         onLongPress: (){
           Navigator.push(context, MaterialPageRoute(builder: (_) {
              return medinfor();
            }));
         },
          );
        },
      ),
     )
     );

     
   }
 }