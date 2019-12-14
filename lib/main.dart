import 'dart:convert';
import 'package:flutterapp/API.dart';
import 'package:flutterapp/models/schedule.dart';
import 'package:flutterapp/schedule.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Http App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var schedule = new List<Schedule>();
  _getSchedule() {
    API.getSchedule().then((response) {
      setState(() {
        var scheduleKey = jsonDecode(response.body);
        Iterable list = scheduleKey['data'];
        schedule = list.map((mode) => Schedule.fromJson(mode)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getSchedule();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User List"),
        ),
        body: ListView.builder(
          itemCount: schedule.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(schedule[index].name));
          },
        ));
  }
}
