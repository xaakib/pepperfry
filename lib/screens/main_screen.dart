import 'dart:ui';

import 'package:flutter/material.dart';

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
  const BottomDesing({
    Key key,
  }) : super(key: key);

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
              Container(
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
              Container(
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
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Colors.red[600],
                      Colors.red[500],
                      Colors.yellow[600],
                      Colors.yellow[500],
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 20,
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SKIP IT FOR NOW",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    ">",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
