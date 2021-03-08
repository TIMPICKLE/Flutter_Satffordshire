import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sqflite/sqflite.dart';
 

class SqliteHelper{
  final sqlFileName ='mydb.sql';
  final table = 'post';
  Database db;
  open()async{
    String path = "${await getDatabasesPath()}/$sqlFileName";

    if(db==null){
      db = await openDatabase(path,version: 1, onCreate: (db,ver)async{
        await  db.execute('''
        Create Table post(
          id integer,
          userId integer,
          title text,
          body text
        )
        ''');//三斜杠代表可以创建很多行sql命令
      });

    }

    
  }
}