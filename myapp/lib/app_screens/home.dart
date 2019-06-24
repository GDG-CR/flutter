//=====================================================
// Lesson 6 - Container Widget
import 'package:flutter/material.dart';


class Home extends StatelessWidget {

 @override
 Widget build(BuildContext context) {

   return Center(
       child: Container(
         alignment: Alignment.center,
         color: Colors.deepPurple,
//		    width: 200.0,
//		    height: 100.0,
//		    margin: EdgeInsets.only(left: 35.0, top: 50.0),
         child: Text("Flight", textDirection: TextDirection.ltr),
       )
   );
 }
}

//=====================================================
//Lesson 8 - Row, Column and Expanded Widget
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Center(
       child: Container(
           padding: EdgeInsets.only(left: 10.0, top: 40.0),
           alignment: Alignment.center,
           color: Colors.deepPurple,
           child: Column(
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Spice Jet",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                         "From Mumbai to Bangalore via New Delhi",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               ),
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Air India",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                         "From Jaipur to Goa",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               )
             ],
           )));
 }
}

//=====================================================
//Lesson 9 - Image Asset
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Center(
       child: Container(
           padding: EdgeInsets.only(left: 10.0, top: 40.0),
           alignment: Alignment.center,
           color: Colors.deepPurple,
           child: Column(
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Delta Air",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                         "From JFK, New York to Los Angeles, CA",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               ),
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Jet Air",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                        "From Los Angeles, CA to JFK, New York",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               ),
               FlightImageAsset()
             ],
           )));
 }
}

class FlightImageAsset extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage('images/tickets.png');
   Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
   return Container(child: image,);
 }
}

//=====================================================
//Lesson 10 - Raised Button and Alert Dialog
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Center(
       child: Container(
           padding: EdgeInsets.only(left: 10.0, top: 40.0),
           alignment: Alignment.center,
           color: Colors.deepPurple,
           child: Column(
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Spice Jet",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                         "From Mumbai to Bangalore via New Delhi",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               ),
               Row(
                 children: <Widget>[
                   Expanded(
                       child: Text(
                         "Air India",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 35.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                   Expanded(
                       child: Text(
                         "From Jaipur to Goa",
                         textDirection: TextDirection.ltr,
                         style: TextStyle(
                             decoration: TextDecoration.none,
                             fontSize: 20.0,
                             fontFamily: 'Raleway',
                             fontWeight: FontWeight.w700,
                             color: Colors.white),
                       )),
                 ],
               ),
               FlightImageAsset(),
               FlightBookButton()
             ],
           )));
 }
}

class FlightImageAsset extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   AssetImage assetImage = AssetImage('images/tickets.png');
   Image image = Image(
     image: assetImage,
     width: 250.0,
     height: 250.0,
   );
   return Container(
     child: image,
   );
 }
}

class FlightBookButton extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(top: 30.0),
     width: 250.0,
     height: 50.0,
     child: RaisedButton(
         color: Colors.deepOrange,
         child: Text(
           "Book Your Flight",
           style: TextStyle(
               fontSize: 20.0,
               color: Colors.white,
               fontFamily: 'Raleway',
               fontWeight: FontWeight.w700),
         ),
         elevation: 6.0,
         onPressed: () => bookFlight(context)),
   );
 }

 void bookFlight(BuildContext context) {
   var alertDialog = AlertDialog(
     title: Text("Flight Booked Successfully"),
     content: Text("Have a pleasant flight"),
   );

   showDialog(
       context: context,
       builder: (BuildContext context) => alertDialog);
 }
}