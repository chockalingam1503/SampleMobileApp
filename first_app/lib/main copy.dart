import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  String placeHolder = "";
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    //  home :Text("first widget")
 home :Scaffold(
  body: Center(
    child: Text("value is $placeHolder"),
  ),
 appBar :AppBar(
  title: Text("flutter by Chockalingam"),
  centerTitle: true,
 ),
 floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add_circle_outline),
  onPressed: () {
    placeHolder="clicked" ;
    print(placeHolder);
    }),
 ),
  );
  }

}