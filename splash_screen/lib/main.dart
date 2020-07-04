import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Splash Screen Example'),
        ),
        body: Center(
          child: Container(
            child: Text('Home page'),
          ),
        ),
      ),
    );
  }
}