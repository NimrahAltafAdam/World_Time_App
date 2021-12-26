import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "loading";

  //SUMMARY:
  //1.First we have loaded this widget, fired the function setupWorldTime() which is async.
  //2.Then we created an instance of WorldTime class passing in all the info.
  //3.Next we fire the getTime() function which will first await the response before moving on.
  //4.Once the response is recieved and the time is set inside the instance,
  //5.We can finally print the time and display it in the console.
  void setupWorldTime()  async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    //Here we need to use await so that pthe print statement only runs after the instance runs the function getTime as instance.time is depended on it.
    //in order to use await on a custome instance like in this case where the class is on another file and instance on another. we have to add a temporary placeholder to our class by adding a Future key word before void
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
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
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time)
      )
    );
  }
}
