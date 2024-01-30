import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //Async function
  void getData() async {
    //
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'first location';
    });

    //
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'second location';
    });

    print('$name - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('statement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade800,
      appBar: AppBar(
        title: Text(
          'Choose Location',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: Text('location'),
    );
  }
}
