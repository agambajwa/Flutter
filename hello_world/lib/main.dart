import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld()); //Entry point to the app
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: Center(
          child: Text('Hello World!',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 50.0,
              fontStyle: FontStyle.italic,
            ),),
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}
