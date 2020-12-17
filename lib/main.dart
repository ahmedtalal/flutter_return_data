
import 'package:flutter/material.dart';
import 'package:return_data/Activities/Home.dart';
import 'package:return_data/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 22 ,
            color: Colors.white ,
            fontWeight: FontWeight.bold ,
          ),
        ),
      ),
      initialRoute: Home.homeRoute,
      routes: route ,
    );
  }
}