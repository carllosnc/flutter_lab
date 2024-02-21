import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import './models/user/user.dart';

sealed class Service {
  HttpClient client = HttpClient();

  static Future<(http.Response, List<User>)> getUsers() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");

    var response = await http.get(url);

    //check if the response is not 200
    if (response.statusCode != 200) {
      throw Exception("Error while fetching data");
    }

    //deserializes the response body
    var body = jsonDecode(response.body);

    var users = <User>[];

    for (var user in body) {
      //add the user to the list
      users.add(User.fromJson(user));
    }

    return (response, users);
  }
}
