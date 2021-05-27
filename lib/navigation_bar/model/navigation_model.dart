import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
  NavigationModel(title: "Launch", icon: Icons.launch),
  NavigationModel(title: "Manage", icon: Icons.gavel),
  NavigationModel(title: "Guide", icon: Icons.help),
];
