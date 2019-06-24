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

//=====================================================
//Lesson 7 - Styling Text
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

 @override
 Widget build(BuildContext context) {

   return Center(
       child: Container(
         alignment: Alignment.center,
         color: Colors.deepPurple,
         child: Text(
           "Flight",
           textDirection: TextDirection.ltr,
           style: TextStyle(
               decoration: TextDecoration.none,
               fontSize: 75.0,
               fontFamily: 'Raleway',
               fontWeight: FontWeight.w700,
               color: Colors.white
           ),
         ),
       )
   );
 }
}

//=====================================================
//Lesson 11 - Basic ListView
import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
 runApp(MaterialApp(
   title: "Exploring UI widgets",
   home: Scaffold(
     appBar: AppBar(title: Text("Basic List View"),),
     body: getListView(),
   ),
 ));
}

Widget getListView() {

 var listView = ListView(
   children: <Widget>[

     ListTile(
       leading: Icon(Icons.landscape),
       title: Text("Landscape"),
       subtitle: Text("Beautiful View !"),
       trailing: Icon(Icons.wb_sunny),
       onTap: () {
         debugPrint("Landscape tapped");
       },
     ),

     ListTile(
       leading: Icon(Icons.laptop_chromebook),
       title: Text("Windows"),
     ),

     ListTile(
       leading: Icon(Icons.phone),
       title: Text("Phone"),
     ),

     Text("Yet another element in List"),

     Container(color: Colors.red, height: 50.0,)

   ],
 );

 return listView;
}

//=====================================================
//Lesson 12 - Long List View
import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
 runApp(MaterialApp(

   title: "Exploring UI widgets",

   home: Scaffold(
       appBar: AppBar(title: Text("Long List"),),
       body: getListView()
   ),

 ));
}

List<String> getListElements() {

 var items = List<String>.generate(1000, (counter) => "Item $counter");
 return items;
}

Widget getListView() {

 var listItems = getListElements();

 var listView = ListView.builder(
     itemBuilder: (context, index) {

       return ListTile(
         leading: Icon(Icons.arrow_right),
         title: Text(listItems[index]),
         onTap: () {
           debugPrint('${listItems[index]} was tapped');
         },
       );
     }
 );

 return listView;
}
