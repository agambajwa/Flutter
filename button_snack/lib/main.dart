import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raised Button and Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Example App'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        color: Colors.black87,
        onPressed: () {

          final snackBar = SnackBar(
              content: Text("This is a SnackBar!"),
            action: SnackBarAction(
                label: 'Hide',
                onPressed: () {
                  
                }),
          );

          Scaffold.of(context).showSnackBar(snackBar);

        },
        child: Text("Tap me!",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}
