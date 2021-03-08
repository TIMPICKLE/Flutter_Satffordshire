import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:work_001/pages/jump.dart';
import 'package:work_001/bottom_navgation_Widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Sign in"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
             TextFormField(
               validator:(input){
                 if(input.isEmpty){
                   return 'please provide your e-mail';
                 }
               },
               onSaved:(input)=> _email= input,
               decoration: InputDecoration(
                 labelText:"E-amil"
               )

             ),

   TextFormField(
               validator:(input) {
                 if(input.length<6){
                   return 'please provide a password, at least 6 characters';
                 }
               },
               onSaved:(input)=> _password = input,
               decoration: InputDecoration(
                 labelText:"password"
               ),
               obscureText: true,
             ),

             RaisedButton(
               onPressed: signIn,
               child: Text("Sign in "),
               )

          ]
        ) 
      ),
    );
  }


Future  <void> signIn() async{
    //log in to firebase
    final formStage = _formKey.currentState;
    if(formStage.validate()){
      formStage.save();
      try{
FirebaseUser user = await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
     Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavgationWidget()));
      }catch(e){
      print(e.message);
      }
    
    }
  }
}