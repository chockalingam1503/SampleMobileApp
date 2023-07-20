import 'package:flutter/material.dart';
import 'package:fooddelivery/colors.dart';

import 'constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(bgImage,
                      height: height * .40,
                      width: width,
                      // fit: BoxFit.cover
                      fit: BoxFit.fill),
                  Container(
                    height: height * .42,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.3, 0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.white])),
                    // color: Colors.red.withOpacity(0.3),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  appName,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(caption,
                    style: TextStyle(color: Colors.amber[900], fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 20),
                child: Container(
                  child: Text(" $loginCaption ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        primaryColor.withOpacity(0.7),
                        Colors.transparent
                      ]),
                      border: Border(
                          left: BorderSide(color: primaryColor, width: 5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.green)),
                      labelText: "Email address",labelStyle: TextStyle(color:primaryColor , fontSize: 16), prefixIcon: Icon(Icons.email, color: primaryColor,)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Colors.green)),
                  labelText: "Password"),
              )
            ]));
  }
}
