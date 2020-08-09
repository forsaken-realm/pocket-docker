import 'package:flutter/material.dart';
import 'navigation_bar/commons/collapsing_navigation_drawer_widget.dart';
import 'navigation_bar/theme.dart';
import 'Docker_data/docker_http.dart';

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
      body: Stack(
        children: <Widget>[
          DockerFunt(),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
