import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    //  home :Text("first widget")
 home :Scaffold(
  body: Center(
    child: Text("value is $value"),
  ),
 appBar :AppBar(
  title: Text("flutter by Chockalingam"),
  centerTitle: true,
 ),
 floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add_circle_outline),
  onPressed: () {
    

    setState(() {
       value=value+1;
    });
    }),
 ),
  );
  }
}