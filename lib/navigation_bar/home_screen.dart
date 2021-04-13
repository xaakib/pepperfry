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
          elevation: 2,
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
              height: 230,
              color: Colors.white,
              child: Column(
                children: [
                  HomeIconsWidgets(),
                  SizedBox(
                    height: 10,
                  ),
                  HomeIconsWidgets(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Icons/shoping_cover.png"))),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeIconsWidgets extends StatelessWidget {
  const HomeIconsWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
      
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.add_business_outlined,
                    size: 50,
                    color: Colors.red,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Furniture",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.house_siding_sharp,
                    size: 50,
                    color: Colors.red,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Living",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.local_shipping_outlined,
                    size: 50,
                    color: Colors.red,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Bedroom",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.add_business_outlined,
                    size: 50,
                    color: Colors.red,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Kids Room",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(
                    Icons.graphic_eq_rounded,
                    size: 50,
                    color: Colors.red,
                  ),
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Mattresses",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
