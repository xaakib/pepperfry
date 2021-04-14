import 'package:flutter/material.dart';
import 'package:idiya/navigation_bar/home_screen.dart';
import 'package:idiya/navigation_bar/profile_screen.dart';
import 'package:idiya/navigation_bar/store_screen.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex = 0;

  List _widgetOptions = <Widget>[HomeScreen(), StoreScreen(), ProfileScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 15,
        selectedLabelStyle: TextStyle(fontSize: 16),
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 25, color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 14),
        selectedFontSize: 18,
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'STORE'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'PROFILE')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
