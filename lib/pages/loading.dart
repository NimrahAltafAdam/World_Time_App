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

  void getTime() async {
    /*Response response = await get(Uri.http('jsonplaceholder.typicode.com', '/todos/1' ));
    //use jsonDecode to format the data so that it can be used as an object
    Map data = jsonDecode(response.body);
    print(data);
    print(data['completed']);*/
    //make the request
    Response response = await get(Uri.http('worldtimeapi.org', '/api/timezone/Europe/Amsterdam'));

    Map data = jsonDecode(response.body);
    //print(data);


    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    // print(datetime);
    //print(offset);

    //create a datetime object to add offset to datetime
    // by creating DateTime var we are basically converting the string datetime output from the world clock api into a DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset) ));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading Screen")
    );
  }
}
