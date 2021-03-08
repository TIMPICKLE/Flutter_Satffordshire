import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('expansion tile demo')),
      body:Center(
        child: ExpansionTile(
          title:Text('Expansion Tile'),
          leading:Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title:Text('your name'),
              subtitle:Text('Tim')
            ),
        ListTile(
              title:Text('your id'),
              subtitle:Text('123456')
            )
          ],
          initiallyExpanded: true,
        )
      )
    );
  }
}