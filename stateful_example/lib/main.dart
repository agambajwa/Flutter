import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateful Widget Example',
      home: MyCustomForm(),
    );
    }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }

}

class MyCustomFormState extends State<MyCustomForm> {
  //Text Controller to retrieve text from Form
  final textController = TextEditingController();


  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Stateful Widget Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: textController,

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: Text(textController.text),
            );
          });
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}