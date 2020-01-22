import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demoapp/FirstPage.dart';


class SecondPage extends StatelessWidget{
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

class PracticeAppState extends State<MyPracticeApp>{

  Future<bool> _onBackPressed(){
    return showDialog(
        context: context,
        builder: (BuildContext context){
        return AlertDialog(
          title: Text("Are you sure to exit"),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: (){
                exit(0);
              },
            ),
            FlatButton(
              child: Text("NO"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ) ;

      }
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: _onBackPressed,
      child:Scaffold(
      appBar: AppBar(
       // leading: Image.asset("assets/lauren.jpeg"),
        title:Text("Practice App",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,

      ),

        body: PageView(
          children: <Widget>[
            Container(
              child: Text("ONe")
            ),
            Container(
              child: Text("Two")
            ),
            Container(
              child: Text("Three")
            )
          ],
          scrollDirection: Axis.horizontal,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Shravanti"),
                accountEmail: Text("sunchushravanti5@gmail.com"),
                currentAccountPicture: CircleAvatar(child:Text("S"),),
              ),
              ListTile(
                title: Text("Hello"),
                onTap: (){
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                     return FirstPage();
                    }
                  ));
                },
              )
            ],
          ),
        ),
    ));
  }
}
