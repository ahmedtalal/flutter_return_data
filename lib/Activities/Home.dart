import 'package:flutter/material.dart';
import 'package:return_data/Activities/Settings.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  static final homeRoute = "/home" ;
  var myKey = GlobalKey<ScaffoldState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey ,
      appBar: AppBar(
        title: Text(
          "Home page" ,
          style: Theme.of(context).textTheme.headline1 ,
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            "switching"
          ),
          onPressed: () async{
            // Navigator.push(
            //   context, 
            //   MaterialPageRoute(
            //     builder: (context) => Settigns(),
            //   )
            // );
            var result = await Navigator.pushNamed(
              context, 
              Settigns.settingRoute ,
              arguments: "My name is ahmed talal" ,
            );
            myKey.currentState..removeCurrentSnackBar()..showSnackBar(
              SnackBar(content : Text("the result is $result")),
            );
          },
        ),
      ),
    );
  }
}