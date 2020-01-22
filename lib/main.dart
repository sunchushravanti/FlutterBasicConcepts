import 'package:flutter/material.dart';
import 'package:flutter_demoapp/FirstPage.dart';
import 'package:flutter_demoapp/SecondPage.dart';
import 'dart:math' as math;

void main()=>runApp(PracticeApp());



class PracticeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "PracticeApp",
      theme: ThemeData(
        backgroundColor: Colors.transparent,
        primaryColor: Colors.lightGreen
      ),
      home: MyPracticeApp(),
    );
  }
}
class MyPracticeApp extends StatefulWidget{
  PracticeAppState createState()=> PracticeAppState();
}

class PracticeAppState extends State<MyPracticeApp>  with SingleTickerProviderStateMixin{
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController( duration:Duration(seconds: 5),vsync: this)..repeat();
    new Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (BuildContext context){
         return FirstPage();
        }
      ));
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
       child: AnimatedBuilder(
         animation: animationController,
         child: Image.asset("assets/lauren.jpeg"),
         builder: (BuildContext context,Widget child){
          return Transform.rotate(
            angle:animationController.value *5,
            child: child
          );
      }
       ),

      ),
    );
  }

  menuBar(int value) {
    if(value==1){
      Navigator.pushReplacement(context,MaterialPageRoute(
     builder: (BuildContext context) {
       return SecondPage();
     }
      ));
    }

  }
}
