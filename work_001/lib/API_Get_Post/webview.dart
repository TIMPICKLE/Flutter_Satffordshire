import 'package:flutter/material.dart'; 
import 'dart:async';
import 'dart:convert';
 import 'package:webview_flutter/webview_flutter.dart';
 
 

 class webview extends StatefulWidget {
   @override
   _webviewState createState() => _webviewState();
 }
 
 class _webviewState extends State<webview> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: WebView(
         initialUrl:"https://www.atcm.co.uk/disease",
         javascriptMode: JavascriptMode.unrestricted,
       ),
     );
   }
 }