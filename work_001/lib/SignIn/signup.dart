import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:work_001/SignIn/signIn.dart';
import 'package:work_001/pages/jump.dart';
import 'package:work_001/bottom_navgation_Widget.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}
   
class _SignUpState extends State<SignUp> {
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
               onPressed: signUp,
               child: Text("Sign Up "),
               )

          ]
        ) 
      ),
    );
  }


Future  <void> signUp() async{
    //log in to firebase
    final formStage = _formKey.currentState;
    if(formStage.validate()){
      formStage.save();
      try{
FirebaseUser user = await  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password:_password);
   user.sendEmailVerification();
    Navigator.of(context).pop();
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      }catch(e){
      print(e.message);
      }
    
    }
  }


}

