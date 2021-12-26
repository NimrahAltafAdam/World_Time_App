import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  int counter = 0;

  void getData() async {
    Response response = await get(Uri.http('jsonplaceholder.typicode.com', '/todos/1' ));
    //use jsonDecode to format the data so that it can be used as an object
    Map data = jsonDecode(response.body);
    print(data);
    print(data['completed']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen")
    );
  }
}
