import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld()); //Entry point to the app
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Material(
        child: new Center(
          child: new Text("Hello World!"),
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}
