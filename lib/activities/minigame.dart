import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:UMENAVI/activities/games/pazzle1.dart';
import "package:slidingpuzzle/Board.dart";
import 'package:tetris/main.dart';
class SlidePuzzlePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildc){
    return MaterialApp(
      title: "Sliding Puzzle",
      debugShowCheckedModeBanner: false,
      home:Board()
    );
  }
}
class MiniGamePage extends StatefulWidget{
  @override
  _MiniGamePageState createState()=>_MiniGamePageState();
}
class _MiniGamePageState extends State<MiniGamePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: Text("MiniGame"),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => Pazzle1()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                        semanticsLabel: 'map',),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("パズルゲーム君"),
                            subtitle: Text("クソゲーですを"),
                          )
                      )
                    ],
                  )
              )
          ),
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (conkun) => Board()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                        semanticsLabel: 'map',),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("Slide Pazzle"),
                            subtitle: Text("うんこもらし"),
                          )
                      )
                    ],
                  )
              )
          ),InkWell(
              onTap: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (conkun) => MyApp()));
              },
              child:Card(
                  child:Column(
                    children: <Widget>[
                      SvgPicture.asset("images/icon/iconmonstr-map-2-240.svg",
                        semanticsLabel: 'map',),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child:ListTile(
                            title:Text("Tetris Pazzle"),
                            subtitle: Text("うんこもらし"),
                          )
                      )
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }
}