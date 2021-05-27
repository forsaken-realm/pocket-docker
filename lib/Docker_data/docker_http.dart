import 'package:flutter/material.dart';

class DockerFunt extends StatefulWidget {
  @override
  _DockerFuntState createState() => _DockerFuntState();
}

class _DockerFuntState extends State<DockerFunt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Hello',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
