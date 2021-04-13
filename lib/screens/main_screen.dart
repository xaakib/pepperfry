import 'package:flutter/material.dart';
import 'package:pepperfry/screens/register_screen.dart';

import 'login_screen.dart';
import 'otp_moible_config.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1560830913-db410393bcdb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"))),
          child: Stack(
            children: [
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BottomDesing(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomDesing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 120.0,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
                child: Container(
                  height: 50,
                  width: 170,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                  child: Center(
                      child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.red),
                  )),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen())),
                child: Container(
                  height: 50,
                  width: 170,
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
                      Colors.yellow[700],
                    ],
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.bottomCenter,
            height: 20,
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpMobileConfig())),
                    child: Text(
                      "SKIP IT FOR NOW",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.arrow_forward_ios_outlined,
                      size: 20, color: Colors.black.withOpacity(0.5)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
