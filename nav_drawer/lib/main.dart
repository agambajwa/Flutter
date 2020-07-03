import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text('User Name'),
                  accountEmail: Text('user@email.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: ExactAssetImage("assets/images/user.png"),
                  ),
              ),
              ListTile(
                leading: Icon(Icons.airline_seat_individual_suite),
                title: Text('Sleep'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.brightness_3),
                title: Text('At night'),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Go back?'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  
}