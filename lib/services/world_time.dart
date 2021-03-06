import 'package:http/http.dart';
import 'dart:convert';


class WorldTime {

  String location; // location name for the UI;
  String time = ""; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint

  //We will now be creating a constructor
  WorldTime({required this.location , required this.flag, required this.url});

  Future <void> getTime() async {

    try {
      //make the request
      Response response = await get(Uri.http('worldtimeapi.org', '/api/timezone/$url'));

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

      //set the time property
      time = now.toString();
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }

}

//instance of class worldtime


//instance.getTime();