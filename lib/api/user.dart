import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user_model.dart';

Future<int> registerUser(String firstName, String lastName, String email,
    String password, List<String> roles) async {
  var url = Uri.parse('https://s3-5002.nuage-peda.fr/users');
  var headers = {'Content-Type': 'application/json'};
  var body = json.encode({
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'password': password,
    'roles': roles
  });
  try {
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 201) {
      return response.statusCode;
    } else {
      print(
          "Échec de la requête : Code de statut ${response.statusCode}, Réponse : ${response.body}");
      return response.statusCode;
    }
  } catch (e) {
    print("Exception lors de la requête : $e");
    return 0;
  }
}

Future<http.Response> login(String email, String password) async {
  final url = Uri.parse('https://s3-5002.nuage-peda.fr/users/login');
  final headers = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
  };
  final body = jsonEncode({
    'email': email,
    'password': password,
  });
  final response = await http.post(
    url,
    headers: headers,
    body: body,
  );
  if (response.statusCode == 200) {
    return response;
  } else {
    throw Exception('Failed to login: ${response.reasonPhrase}');
  }
}

Future<List<UserModel>> fetchMessages() async {
  final response = await http.get(Uri.parse("https://s3-5002.nuage-peda.fr/users"));

  if (response.statusCode == 200) {
    List<dynamic> body = json.decode(response.body);
    List<UserModel> user =
        body.map((dynamic item) => UserModel.fromJson(item)).toList();
    return user;
  } else {
    throw Exception('Failed to load messages');
  }
}
