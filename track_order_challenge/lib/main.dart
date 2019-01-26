import 'package:flutter/material.dart';
import 'package:track_order_challenge/src/screen/sale_screen.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home:SaleScreen()
    )
  );
}