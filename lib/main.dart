import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idiya/navigation_bar/home_screen.dart';
import 'package:idiya/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String token;

  void isLoogedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      token = prefs.getString('jwt_token');
    });
    print("MainToken is : $token");
  }

  @override
  void initState() {
    super.initState();
    isLoogedIn();
  }

  @override
  Widget build(BuildContext context) {
    print("Main LoginTOken : $token");
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IDIYA',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: token == null ? LoginScreen() : HomeScreen());
  }
}
