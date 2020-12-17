import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Settigns extends StatelessWidget {
  static final settingRoute = "/setting" ;

  @override
  Widget build(BuildContext context) {
    var result = ModalRoute.of(context).settings.arguments ;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings Page" ,
          style: Theme.of(context).textTheme.headline1 ,
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            // first button------------------->>>>>
            RaisedButton(
              child: Text(
                "Yes" ,
              ),
              onPressed: () => Navigator.of(context).pop("yes"),
            ),

            // second buuton-------------->>>>>
            RaisedButton(
              child: Text(
                "No" ,
              ),
              onPressed: () => Navigator.of(context).pop("No"),
            ),
            Text(
              "returned data is $result"
            ),
          ],
        ),
      ),
    );
  }
}