import 'package:flutter/material.dart';
import 'package:idiya/screens/register_screen.dart';

import 'login_screen.dart';
import 'otp_moible_config.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/Icons/splash_screen.png")),
        ),
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
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.easeOutQuint);
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return LoginScreen();
                        },
                      ));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
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
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.easeOutQuint);
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return RegisterScreen();
                        },
                      ));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
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
                    onTap: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 400),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeOutQuint);
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return OtpMobileConfig();
                            },
                          ));
                    },
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
