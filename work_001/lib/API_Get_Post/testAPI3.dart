  import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main() {
  runApp(MaterialApp(
    home: StarWarsData2(),
  ));
}

class StarWarsData2 extends StatefulWidget {
  @override
  StarWarsState2 createState() => StarWarsState2();
}

class StarWarsState2 extends State<StarWarsData2> {
  final String url = "http://api.tianapi.com/health/index?key=e6d8f386c25a779a33f50a460111ad25&num=10";
  List data;

  Future<String> getSWData() async {
    var res = await http.get(Uri.parse(url), headers: {"Accept": "application/json"});

    setState(() {
      Utf8Decoder utf8decoder = Utf8Decoder();
      //var resBody = json.decode(res.body);
      var result = json.decode(utf8decoder.convert(res.bodyBytes));
 //乱码转UTF8
      data = result["newslist"];
    });

    return "Success!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("blogs"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text("tittle: "),
                            Text(data[index]["title"],
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black87)),
                          ],
                        )),
                  ),
                  Card(
                    child: Container(
                      width: 100,
                      height: 30,
                        padding: EdgeInsets.all(0.10),
                        child: Container(
                            
                             child: Text(data[index]["description"],
                            ),  
                        )
                        ),
                  ),
                    Card(
                    child: Container(
                      width: 200,
                      height: 400,
                        padding: EdgeInsets.all(0.10),
                        child: Container(
                         child: Text(data[index]["url"]), 
                         //明天插入一个webview来展示 具体内容
                        )
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }
}
