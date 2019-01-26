import 'package:flutter/material.dart';
import 'package:restaurant_challenge_flutterando/src/custom/meal_card.dart';
import 'package:restaurant_challenge_flutterando/src/home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Home(),
        ));
  }
}
