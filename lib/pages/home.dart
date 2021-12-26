import 'package:flutter/material.dart';


//For the Home screen we will make use of stateful widgets as we will be making use of states
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('home screen')),
    );
  }
}
