import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:idiya/global/global_api.dart';
import 'package:idiya/navigation_bar/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'otp_moible_config.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwodController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  bool _showPassword = false;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OtpTexts(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(hintText: "Username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: passwodController,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.orange,
                            ),
                          ),
                          hintText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    loading == false
                        ? InkWell(
                            onTap: () {
                              if (_formKey.currentState.validate()) {
                                loginAPi(usernameController.text,
                                    passwodController.text, context);
                              } else {
                                print("No data");
                              }
                            },
                            child: Container(
                              height: 60,
                              child: Center(
                                  child: Text("LOG IN",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 18))),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.red,
                                  Colors.orange,
                                ],
                              )),
                            ),
                          )
                        : Center(child: CircularProgressIndicator()),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OtpMobileConfig())),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)),
                        child: Center(
                            child: Text(
                          "Login using OTP",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.red),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Forgot Password?",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            color: Colors.red,
                            fontSize: 17,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 100),
                Center(
                  child: Text("New To Pepperfry? Register Here",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OR Continue With",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/Icons/facebook_icon.png"))),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/Icons/google_icon.jpg"))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
