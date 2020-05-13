import 'package:flutter/material.dart';
import 'package:pdf/Home.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

void main(){
  runApp(FireBaseApp());
}

class FireBaseApp extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FireBaseApp",
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          canvasColor: Colors.cyan[50]
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}