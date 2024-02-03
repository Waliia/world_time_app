import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  String location;
  String flag;
  String? time;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    String baseURL = 'http://worldtimeapi.org/api/timezone/';
    // String endURL = 'Asia/Karachi';
    //
    try {
      Response response;
      response = await get(Uri.parse(baseURL + url));

      Map data = jsonDecode(response.body);
      // print(data);

      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      // print(datetime);
      // print(offset);

      DateTime date = DateTime.parse(datetime);
      date = date.add(Duration(hours: int.parse(offset)));
      // print(date);

      time = date.toString();
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time zone';
    }
  }
}
