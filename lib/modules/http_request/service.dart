import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import './models/user/user.dart';

sealed class Service {
  HttpClient client = HttpClient();

  static Future<(http.Response, List<User>)> getUsers() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/users");

    var response = await http.get(url);

    //verifica se a requisição foi bem sucedida
    if (response.statusCode != 200) {
      throw Exception("Error while fetching data");
    }

    //deserializa o body da resposta
    var body = jsonDecode(response.body);

    //lista de users
    var users = <User>[];

    for (var user in body) {
      //adiciona cada user na lista
      users.add(User.fromJson(user));
    }

    return (response, users);
  }
}
