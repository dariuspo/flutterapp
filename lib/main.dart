import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MakeupApp());

class MakeupApp extends StatefulWidget {
  @override
  _MakeupAppState createState() => _MakeupAppState();
}

class _MakeupAppState extends State<MakeupApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Jadwal Lita"),
        ),
      ),
    );
  }
}
