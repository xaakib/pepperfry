import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:idiya/global/global_api.dart';
import 'package:http/http.dart' as http;

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwodController = TextEditingController();
  bool _showPassword = false;

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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.close)),
                      RegisterTexts(),
                      Column(
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
                            controller: emailController,
                            decoration: InputDecoration(hintText: "Email"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            controller: passwodController,
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _showPassword = !_showPassword;
                                    });
                                  },
                                  child: Icon(_showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                hintText: "Password"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please a Enter Password';
                              }
                              if (value.length < 6) {
                                return 'Must be more than 6 charater';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 40),
                          InkWell(
                            onTap: () {
                              if (_formKey.currentState.validate()) {
                                registerApi(
                                    usernameController.text,
                                    emailController.text,
                                    passwodController.text,
                                    context);
                              } else {
                                return Text("Full Fill Your TextField");
                              }
                            },
                            child: Container(
                              height: 60,
                              child: Center(
                                  child: Text("REGISTER",
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
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Center(
                          child: Text(
                        "By clicking here, you have read and agree to",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Terms of Use",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "&",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(width: 5),
                          Text("Privacy Policy",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: Text("Existing User? Log In",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "OR Continue With",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 15),
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
                                    image: AssetImage(
                                        "assets/Icons/google_icon.jpg"))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterTexts extends StatelessWidget {
  const RegisterTexts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text(
          "Register and Get",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.red),
        ),
        SizedBox(height: 15),
        Text(
          "NZ \$2051, Instantly\nIn Your Perperfry Wallet",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        SizedBox(height: 7),
        Text(
          "These Credits Can Be Clubbed With Other Offes",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
