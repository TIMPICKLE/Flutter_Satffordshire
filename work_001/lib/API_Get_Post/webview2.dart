import 'package:flutter/material.dart'; 
import 'dart:async';
import 'dart:convert';
 import 'package:webview_flutter/webview_flutter.dart';
 
 

 class webview2 extends StatefulWidget {
   @override
   _webview2State createState() => _webview2State();
 }
 
 class _webview2State extends State<webview2> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: WebView(
         initialUrl:"https://www.google.com/maps/search/chinese+medicine/@52.5022576,-2.3104124,8z/data=!3m1!4b1",
         javascriptMode: JavascriptMode.unrestricted,
       ),
     );
   }
 }