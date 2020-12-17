import 'package:flutter/material.dart';
import 'package:return_data/Activities/Home.dart';
import 'package:return_data/Activities/Settings.dart';

var route  = <String , WidgetBuilder>{
  Home.homeRoute : (context) => Home() ,
  Settigns.settingRoute : (context) => Settigns() ,
};