import 'package:flutter/material.dart';
import 'package:work_001/background/asset.dart';
import "package:work_001/API_Get_Post/testAPI.dart";
import 'package:work_001/API_Get_Post/cardStyle.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class SearchBarDemo extends StatefulWidget {
  @override
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SearchBar"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
               showSearch(context: context,delegate: searchBarDelega());
            },
            )
        ],
      ),
      //body: MyHome(),
      body:CardWidgetStyle(),
    );
  }
}

class searchBarDelega extends SearchDelegate<String>{
  @override
  List<Widget> builActions (BuildContext context){
  return [
    IconButton(
      icon:Icon(Icons.clear),
      onPressed:()=>query= "",
    )
    ];
    }


    @override//返回操作箭头按键
    Widget buildLeading (BuildContext context){
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
          ),
          onPressed: ()=> close(context,null) ,
      );
    }

    @override//这边是转跳之后做显示的内容
    Widget buildResults (BuildContext context){
         
      return Container(
        width: 400.0,
        height: 800.0,
        child: Card(
          color: Colors.lightBlueAccent,
          child: Center(
            //child: Text(query),
          
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
            }),

          ),
        ),
      );
    }


//提示性文字
@override
    Widget buildSuggestions(BuildContext context){
       final suggestionList = query.isEmpty
       ? recentSuggest
       : searchList.where((input)=> input.startsWith(query)).toList();
       return ListView.builder(
         itemCount: suggestionList.length,
         itemBuilder: (context,index)=> ListTile(
           title: RichText(
             text: TextSpan(
               text: suggestionList[index].substring(0,query.length),
               style: TextStyle(
                 color: Colors.black,fontWeight: FontWeight.bold
               ),
               children: [
                 TextSpan(
                   text: suggestionList[index].substring(query.length),
                   style: TextStyle(color: Colors.grey)
                 )
               ]
             ),
           ),
         ),//列表瓦片
       );
    }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return null;
  }

}
