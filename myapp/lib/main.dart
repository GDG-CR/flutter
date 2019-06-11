//=====================================================
//Lesson 1 - Text Widget

import "package:flutter/material.dart";


void main() {

 runApp(
     Center(
       child: Text(
           "Hello Flutter",
           textDirection: TextDirection.ltr
       ),
     )
 );
}

//=====================================================
//Lesson 2 - Material Widget

import "package:flutter/material.dart";

void main() {

 runApp(

     MaterialApp(
         title: "My Flutter App",
         home: Scaffold(
           appBar: AppBar(title: Text("My First App Screen"),),
           body: Material(
             color: Colors.lightBlueAccent,
             child: Center(
               child: Text(
                 "Hello Flutter",
                 textDirection: TextDirection.ltr,
                 style: TextStyle(color: Colors.white, fontSize: 40.0),
               ),
             ),
           ),
         )
     )
 );
}

//=====================================================
//Lesson 4 - Organizing code in Flutter App

import "package:flutter/material.dart";
import './app_screens/first_screen.dart';

void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "My Flutter App",
       home: Scaffold(
           appBar: AppBar(title: Text("My First App Screen"),),
           body: FirstScreen()
       )
   );
 }
}

//=====================================================
//Lesson 5 - Organizing code in Flutter App  - Lucky Number

import "package:flutter/material.dart";
import './app_screens/first_screen.dart';

void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "My Flutter App",
       home: Scaffold(
           appBar: AppBar(title: Text("My First App Screen"),),
           body: FirstScreen()
       )
   );
 }
}

//=====================================================
//Lesson 6, 7, 8, 9, 10 - Container Widget
import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
 runApp(MaterialApp(
   title: "Exploring UI widgets",
   home: Home(),
 ));
}