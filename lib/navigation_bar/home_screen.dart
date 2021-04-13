import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          centerTitle: false,
          title: Text(
            "pf",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search_rounded, size: 30, color: Colors.black),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.hourglass_top_outlined,
                    size: 30, color: Colors.black),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined,
                    size: 30, color: Colors.black),
                onPressed: () {}),
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              color: Colors.red,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}