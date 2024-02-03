import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Karachi', flag: 'karachi.png', url: 'Asia/Karachi');
    await instance.getTime();
    // print(instance.time);
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text('loading'),
      ),
    );
  }
}
