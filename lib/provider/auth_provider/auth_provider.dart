import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:idiya/global/global_api.dart';
import 'package:idiya/navigation_bar/home_screen.dart';
import 'package:idiya/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  Future<String> loginAPi(
      String username, password, BuildContext context) async {
    Future saveToken(value) async {
      // Async func to handle Futures easier; or use Future.then
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('jwt_token', value);

      return prefs.setString("jwt_token", value);
    }

    final response = await http.post(
      Uri.parse(GlobalApi.loginApi),
      headers: <String, String>{
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        "username": username,
        "password": password,
      }),
    );
    var loginResponse = jsonDecode(response.body);
    try {
      if (loginResponse['token_type'] == "Bearer") {
        print("succsess reponse${response.body}");
        saveToken(loginResponse['jwt_token']);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
      } else {
        print("else Response${response.body}");
        // Fluttertoast.showToast(
        //     msg: "This is Center Short Toast",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.black.withOpacity(0.5),
        //     textColor: Colors.white,
        //     fontSize: 16.0);
      }
    } catch (e) {}
  }

  Future<String> registerApi(
      String username, email, passowrd, BuildContext context) async {
    final response = await http.post(
      Uri.parse(GlobalApi.registerApi),
      headers: <String, String>{
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        "username": username,
        "email": email,
        "password": passowrd,
      }),
    );
    var registerResponse = jsonDecode(response.body);
    try {
      if (registerResponse['code'] == 200) {
        print("succsess reponse${response.body}");

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen()));
      } else {
        print("else Response Messages : ${registerResponse['message']}");
      }
    } catch (e) {}
  }
}
