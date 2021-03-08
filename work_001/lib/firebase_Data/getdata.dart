import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
 

class getdata extends StatefulWidget {
  @override
  _getdataState createState() => _getdataState();
}

class _getdataState extends State<getdata> {
  final String url = 'https://jsonplaceholder.typicode.com/posts';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home:Container(
     decoration: new BoxDecoration(
              color: Colors.white,
              ),
         child: StreamBuilder(
          
            stream: Firestore.instance.collection('post')?.snapshots(),
            builder: (context, snap) {
              if (snap.hasData) {
                List<DocumentSnapshot> dsList = snap.data?.documents;
                return ListView.builder(
                    itemCount: dsList?.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot doc = dsList[index];
                      return InkWell(
                        onTap: (){
                          Firestore.instance.collection('post').document(doc.documentID);
                        },
                        child: ListTile(
                          title: Text(doc['title'], style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal)),
                          subtitle:Text(doc['body']) ,
                        ),
                      );
                    });
              }

              return Container();
            }),)
   
       
    );
  }
}
