import 'package:flutter/material.dart';
import 'package:login_chanlllage_app/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Login(),
          bottomNavigationBar: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.visibility,color: Colors.pink, size: 25,),
                padding:
                    EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 30),
              ),
              IconButton(
                icon: Icon(Icons.airplanemode_active,color: Colors.pink, size: 25,),
                padding:
                    EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 30),
              ),
              IconButton(
                icon: Icon(Icons.mail,color: Colors.pink, size: 25,),
                padding:
                    EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 30),
              ),
              IconButton(
                icon: Icon(Icons.place,color: Colors.pink, size: 25,),
                padding:
                    EdgeInsets.only(bottom: 30, left: 20, right: 20, top: 30),
              ),
            ],
          ),
        ));
  }
}
