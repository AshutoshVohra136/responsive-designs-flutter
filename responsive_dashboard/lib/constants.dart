import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);
var myBackGroundColor = Colors.grey[300];
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(Icons.dashboard),
        title: Text(' D A S H B O A R D '),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text(' M E S S A G E  '),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text(' S E T I N G S '),
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text(' L O G O U T'),
      ),
    ],
  ),
);
