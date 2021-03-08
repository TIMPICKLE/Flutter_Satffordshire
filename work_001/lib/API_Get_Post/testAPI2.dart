  import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:work_001/Tools/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MaterialApp(
    home: StarWarsData(),
  ));
}

class StarWarsData extends StatefulWidget {
  @override
  StarWarsState createState() => StarWarsState();
}

 class StarWarsState extends State<StarWarsData> {
  final String url = "http://api.tianapi.com/txapi/zhongyao/index?key=e6d8f386c25a779a33f50a460111ad25&word=金银花";
   static List data;

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
    return MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: Text("Medicine information"),
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
                            Text("Name: "),
                            Text(data[index]["title"],
                            
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black87)),
                          ],
                        )),
                  ),
                  Card(
                    child: Container(
                      width: 400,
                      height: 600,
                        padding: EdgeInsets.all(0.10),
                        child: Container(
                            child: Text(data[index]["content"],
                            softWrap: true,
                            ),  
                        )
                        ),
                  ),
                  
                ],
              ),
            ),
          );
        },
      ),
    )
    );
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }
}
