import 'dart:ui';
import 'body/body.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text("DOCKER"),
        centerTitle: true,
      ),
      body: new_body,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        elevation: 10,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.network(
              'https://cdn3.iconfinder.com/data/icons/logos-and-brands-adobe/512/97_Docker-512.png',
              width: 25,
              height: 25,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks),
            title: Text('Manage'),
          ),
        ],
        currentIndex: _selectIndex,
        onTap: (index) => {
          setState(() {
            _selectIndex = index;
          })
        },
        selectedItemColor: Colors.white70,
      ),
    );
  }
}
