import 'package:flutter/cupertino.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends ChangeNotifier {
  loginAPi(String username, email, password) async {
    final response = await http.post(
      Uri.parse('https://idiya.co.nz/wp-json/api/v1/token'),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        "username": username,
        "email": email,
        "password": password,
      }),
    );
    var loginResponse = jsonDecode(response.body);
    print("Response is :$loginResponse ");
  }
}
