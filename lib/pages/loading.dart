import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //Async function
  void getData() async {
    String baseURL = 'https://jsonplaceholder.typicode.com/';
    String endURL = 'posts/1';
    //
    Response response;
    response = await get(Uri.parse(baseURL + endURL));

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
