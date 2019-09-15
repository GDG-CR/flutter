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

//=====================================================
//Lesson 13 - Floating Action Button and Snack Bar
import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main() {
 runApp(MaterialApp(

   title: "Exploring UI widgets",

   home: Scaffold(
     appBar: AppBar(title: Text("Long List"),),
     body: getListView(),
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         debugPrint("FAB clicked");
       },
       child: Icon(Icons.add),
       tooltip: 'Add One More Item',
     ),
   ),

 ));
}

void showSnackBar(BuildContext context, String item) {
 var snackBar = SnackBar(
   content: Text("You just tapped $item"),
   action: SnackBarAction(
       label: "UNDO",
       onPressed: () {
         debugPrint('Performing dummy UNDO operation');
       }
   ),
 );

 Scaffold.of(context).showSnackBar(snackBar);
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
           showSnackBar(context, listItems[index]);
         },
       );
     }
 );

 return listView;
}

//=====================================================
//Lesson 14 - Stateful Widget Demo Example
import 'package:flutter/material.dart';

void main() {

 runApp(
     MaterialApp(
       title: "Sateful App Example",
       home: FavoriteCity(),
     )
 );
}

class FavoriteCity extends StatefulWidget {

 @override
 State<StatefulWidget> createState() {
   return _FavoriteCityState();
 }
}

class _FavoriteCityState extends State<FavoriteCity> {

 String nameCity = "";

 @override
 Widget build(BuildContext context) {

   debugPrint("Favorite City widget is created");

   return Scaffold(
     appBar: AppBar(
       title: Text("Stateful App Example"),
     ),
     body: Container(
       margin: EdgeInsets.all(20.0),
       child: Column(
         children: <Widget>[
           TextField(
             onSubmitted: (String userInput) {
               setState(() {
                 debugPrint("set State is called, this tells framework to redraw the FavCity widget");
                 nameCity = userInput;
               });
             },
           ),
           Padding(
               padding: EdgeInsets.all(30.0),
               child: Text(
                 "Your bext city is $nameCity",
                 style: TextStyle(fontSize: 20.0),
               ))
         ],
       ),
     ),
   );
 }
}

//=====================================================
//Lesson 15 - DropdownButton and DropdownMenuItem
import 'package:flutter/material.dart';

void main() {

 runApp(
     MaterialApp(
       title: "Sateful App Example",
       home: FavoriteCity(),
     )
 );
}

class FavoriteCity extends StatefulWidget {

 @override
 State<StatefulWidget> createState() {
   return _FavoriteCityState();
 }
}

class _FavoriteCityState extends State<FavoriteCity> {

 String nameCity = "";
 var _currencies = ['Rupees', 'Dollars', 'Pounds', 'Others'];
 var _currentItemSelected = 'Dollars';

 @override
 Widget build(BuildContext context) {

   debugPrint("Favorite City widget is created");

   return Scaffold(
     appBar: AppBar(
       title: Text("Stateful App Example"),
     ),
     body: Container(
       margin: EdgeInsets.all(20.0),
       child: Column(
         children: <Widget>[
           TextField(
             onSubmitted: (String userInput) {
               setState(() {
                 debugPrint("set State is called, this tells framwork to redraw the FavCity widget");
                 nameCity = userInput;
               });
             },
           ),
           DropdownButton<String>(

             items: _currencies.map((String dropDownStringItem) {
               return DropdownMenuItem<String>(
                 value: dropDownStringItem,
                 child: Text(dropDownStringItem),
               );
             }).toList(),

             onChanged: (String newValueSelected) {
               // Your code to execute, when a menu item is selected from drop down
               _onDropDownItemSelected(newValueSelected);
             },

             value: _currentItemSelected,

           ),
           Padding(
               padding: EdgeInsets.all(30.0),
               child: Text(
                 "Your best city is $nameCity",
                 style: TextStyle(fontSize: 20.0),
               ))
         ],
       ),
     ),
   );
 }

 void _onDropDownItemSelected(String newValueSelected) {
   setState(() {
     this._currentItemSelected = newValueSelected;
   });
 }
}

//=====================================================
// ============ TO BE DONE ==========================
//Lesson 16 - Creating UI of Simple Interest Calculator
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator App",
    home: SIForm(),
  ));
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  //var _currencies = ['Dollars', 'Pounds', 'Sterling', 'Other'];
  final _minimumPadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Interest Calculator App'),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: Column(
          children: <Widget>[
            getImageAsset(),

        TextField(
          keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Principal",
                hintText: "Enter Principal es. 1200"
              ),
            ),

            TextField(
              decoration: InputDecoration(
                  labelText: "Rate of Interest",
                  hintText: "Enter Principal es. 1200"
              ),
            ),

          ],
        ),
      )
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);
    return Container(child: image, margin: EdgeInsets.all(_minimumPadding * 10),);
  }
}

//=====================================================
// ============ TO BE FINISHED SOON ===================
//Lesson 16 - Creating UI of Simple Interest Calculator
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator App",
    home: SIForm(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent

    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Dollars', 'Pounds', 'Sterling', 'Other'];
  final _minimumPadding = 5.0;
  var _currentItemSelected = '';

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';

  @override

  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Simple Interest Calculator App'),
        ),
        body: Container(
          margin: EdgeInsets.all(_minimumPadding * 2),
          child: ListView(
            children: <Widget>[
              getImageAsset(),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextField(
                    keyboardType: TextInputType.number,
                      style: textStyle,
                    controller: principalController,
                    decoration: InputDecoration(
                        labelText: "Principal",
                        hintText: "Enter Principal es. 1200",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    controller: roiController,
                    decoration: InputDecoration(
                        labelText: "Rate of Interest",
                        hintText: "Enter Principal es. 1200",
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                            style: textStyle,
                        controller: termController,
                        decoration: InputDecoration(
                            labelText: "Term",
                            hintText: "Time in years",
                            labelStyle: textStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                      Container(
                        width: _minimumPadding * 5,
                      ),
                      Expanded(
                          child: DropdownButton<String>(
                        items: _currencies.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),

                        value: _currentItemSelected,
                            onChanged: (String newValueSelected) {
                              // Your code to execute, when a menu item is selected from drop down
                              _onDropDownItemSelected(newValueSelected);
                            },
                      )),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text('Calculate', textScaleFactor: 1.5,),
                          onPressed: () {
                            setState(() {
                             this.displayResult = _calculateTotalReturns();
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text('Reset', textScaleFactor: 1.5,),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          },
                        ),
                      ),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: Text(this.displayResult, style: textStyle,),
              )

            ],


          ),
        ));
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result = 'After $term years, your interest will be worth $totalAmountPayable $_currentItemSelected';
    return result;
  }

  void _reset() {
    principalController.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}

//=====================================================
// ============ FINISHED  ===================
//Lesson 16 - Added Validation to the Simple Interest Calculator
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator App",
    home: SIForm(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent

    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  _SIFormState createState() => _SIFormState();
}

class _SIFormState extends State<SIForm> {

  var _formKey = GlobalKey<FormState>();

  var _currencies = ['Dollars', 'Pounds', 'Sterling', 'Other'];
  final _minimumPadding = 5.0;
  var _currentItemSelected = '';

  TextEditingController principalController = TextEditingController();
  TextEditingController roiController = TextEditingController();
  TextEditingController termController = TextEditingController();

  var displayResult = '';

  @override

  void initState() {
    super.initState();
    _currentItemSelected = _currencies[0];
  }

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Simple Interest Calculator App'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),

          child: ListView(
            children: <Widget>[
              getImageAsset(),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                      style: textStyle,
                    controller: principalController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter principal amount';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Principal",
                        hintText: "Enter Principal es. 1200",
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 20.0
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: textStyle,
                    controller: roiController,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter ROI amount';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Rate of Interest",
                        hintText: "Enter Principal es. 1200",
                        labelStyle: textStyle,
                        errorStyle: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 20.0
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextFormField(
                        keyboardType: TextInputType.number,
                            style: textStyle,
                        controller: termController,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Please enter Term years';
                              }
                            },
                        decoration: InputDecoration(
                            labelText: "Term",
                            hintText: "Time in years",
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 20.0
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                      Container(
                        width: _minimumPadding * 5,
                      ),
                      Expanded(
                          child: DropdownButton<String>(
                        items: _currencies.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),

                        value: _currentItemSelected,
                            onChanged: (String newValueSelected) {
                              // Your code to execute, when a menu item is selected from drop down
                              _onDropDownItemSelected(newValueSelected);
                            },
                      )),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      top: _minimumPadding, bottom: _minimumPadding),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: Text('Calculate', textScaleFactor: 1.5,),
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState.validate()) {
                                this.displayResult = _calculateTotalReturns();
                              }});
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Theme.of(context).primaryColorDark,
                          textColor: Theme.of(context).primaryColorLight,
                          child: Text('Reset', textScaleFactor: 1.5,),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          },
                        ),
                      ),
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(_minimumPadding * 2),
                child: Text(this.displayResult, style: textStyle,),
              )

            ],


          ),
        ))
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

  String _calculateTotalReturns() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(roiController.text);
    double term = double.parse(termController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result = 'After $term years, your interest will be worth $totalAmountPayable $_currentItemSelected';
    return result;
  }

  void _reset() {
    principalController.text = '';
    roiController.text = '';
    termController.text = '';
    displayResult = '';
    _currentItemSelected = _currencies[0];
  }
}

//=====================================================
// ===== TO BE FINISHED SOON BY ADDING DAATABASE ======
//Lesson 17 - Creating UI of the To Do List (with database)
// Create a new Project
import 'package:flutter/material.dart';
import '/app_screens/note_list.dart';
import './app_screens/note_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      // home: NoteDetail(),  // used only to test tge NoteDetail
      home: NoteList(),
    );
  }
}