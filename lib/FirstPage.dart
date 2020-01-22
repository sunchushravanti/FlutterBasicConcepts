import 'package:flutter/material.dart';
import 'package:flutter_demoapp/SecondPage.dart';


class FirstPage extends StatelessWidget{
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
    length: 3,
      child:Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/lauren.jpeg"),
        title:Text("Practice App",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Image.asset("assets/lauren.jpeg"),
            iconSize: 35,
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SecondPage();
                  }
              ));
            },
          ),
          PopupMenuButton(
            onSelected:menuBar ,
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Text("hello"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("hellozzz"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("welcc"),
                  value: 3,
                )
              ];
            },
          ),
        ],
        bottom: TabBar(
         tabs: <Widget>[
           Container(
             child: Text("Hello"),
           ),
           Container(
             child: Text("Hello"),
           ),
           Container(
             child: Text("Hello"),
           ),

         ],
        )

        ),

          body: TabBarView(
          children: <Widget>[
            Container(child:Text("Hellllllll")),
            Container(child:Text("ndfjajfjf")),
            Container(child:Text("ndjhwqueiwpo2")),

          ],
      ),
    )
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
