import 'package:flutter/material.dart';
import 'package:idiya/provider/auth_provider/auth_provider.dart';
import 'package:provider/provider.dart';

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

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
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
                                authProvider.loginAPi(usernameController.text,
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
