import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

//STATELESS
//State does not chamge over time
//build function only runs once

//STATEFUL
//State can change over time
//setState() triggers the build function

//initState()
// Called only once when the widget is created
// Subscribe to streams or any object that could change over widget data

//Build()
//Build the widget tree
//a build is triggered everytime we use useState()

//Dispose()
//When the widget/state object is removed


//ASYNCHRONOUS CODE
/*An Example of such code could be interacting with an API endpoint or a database to get some data so we start a request but it doesnt finish straight away b/c it might take a second or two to complete that request to go and get the data.
* Si if it finishes sometime after the initial request is made  in the meantime our code should not stop untill
* the request is made and data comes back async code should be non-blocking so while the request is being made the rest of the code in our file could carry on */

