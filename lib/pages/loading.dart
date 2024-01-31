import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //Async function
  void getData() async {
    //
    var url = Uri.https('https://jsonplaceholder.typicode.com/posts/1');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('statement');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
