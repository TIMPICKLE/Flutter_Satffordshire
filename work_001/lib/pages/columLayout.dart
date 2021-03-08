import 'package:flutter/material.dart';


class colum extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'ListView widget',

        home:MaterialApp(
        
          home:ListView(
            children: <Widget>[
             Text('Broad and profound, apply what you have learned'),
           
             ExpansionTile(
          title:Text('About developer'),
          leading:Icon(Icons.assistant),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title:Text('Name'),
              subtitle:Text('Tim')
            ),
        ListTile(
              title:Text('E-mail'),
              subtitle:Text('d033889g@student.staffs.ac.uk')
            )
          ],
          initiallyExpanded: true,
        ),
       ExpansionTile(
          title:Text('About App'),
          leading:Icon(Icons.archive),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title:Text('Version'),
              subtitle:Text('1.30')
            ),
        ListTile(
              title:Text('App Name'),
              subtitle:Text('Traditional chinese medicine teacher')
            ),
                ListTile(
              title:Text('From'),
              subtitle:Text('Staffordshire University')
            )
          ],
          initiallyExpanded: true,
        ),
              ExpansionTile(
          title:Text('Unit conversion'),
          leading:Icon(Icons.autorenew),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title:Text('1 liang = 30g'),
            ),
        ListTile(
              title:Text('1 money = 3g'),
            ),
                    ListTile(
              title:Text('1 point = 0.3g'),
            ),
                    ListTile(
              title:Text('1 cent = 0.03g'),
            ),
          ],
          initiallyExpanded: true,
        ),
            ],
          )
        ),
      );
  }
}