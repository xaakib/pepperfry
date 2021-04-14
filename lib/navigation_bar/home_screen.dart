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
        backgroundColor: Colors.black.withOpacity(0.03),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu, color: Colors.black),
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
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                color: Colors.white,
                child: Column(
                  children: [
                    HomeIconsWidgets(),
                    SizedBox(height: 10),
                    HomeIconsWidgets(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/Icons/shoping_cover.png"))),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media.extra.com/i/aurora/FreeDelivery_Strip_en?fmt=jpg"))),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxGIlZ-x234VrT2x-Musuc5DCE2rjXl-rk_KuFD_RpamdDBGQRAg7leZ5HUEnahEvPWag&usqp=CAU"))),
                    ),
                    SizedBox(height: 20),
                    Text("SUPER FRESH DEALS",
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Just For Hue",
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 10),
                    Container(
                        height: 260,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            SuperFreshItems(),
                            SuperFreshItems(),
                            SuperFreshItems(),
                            SuperFreshItems(),
                            SuperFreshItems(),
                          ],
                        )),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "COLOR YOUR HOME WITH THESE BRANDS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Brands For All Types",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuperFreshItems extends StatelessWidget {
  const SuperFreshItems({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD8LnjDtFG-zclEGOjZKJ74ClreaheG9RtgA&usqp=CAU"))),
          ),
          SizedBox(height: 5),
          Container(
            width: 170,
            child: Text(
              "Juro 4 Door Since Cabnet",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 170,
            child: Row(
              children: [
                Text(
                  " ₹6499",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(width: 5),
                Text(
                  " ₹6499",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(width: 5),
                Text(
                  "(60% off)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeIconsWidgets extends StatelessWidget {
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
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Icons/kids.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Furniture",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.house_siding_sharp,
                      size: 50, color: Colors.red),
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Text(
                  "Living",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 60,
                    width: 60,
                    child: Icon(Icons.local_shipping_outlined,
                        size: 50, color: Colors.red),
                    color: Colors.white),
                SizedBox(height: 5),
                Text(
                  "Bedroom",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 60,
                    width: 60,
                    child: Icon(Icons.add_business_outlined,
                        size: 50, color: Colors.red),
                    color: Colors.white),
                SizedBox(height: 5),
                Text(
                  "Kids Room",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 60,
                    width: 60,
                    child: Icon(Icons.graphic_eq_rounded,
                        size: 50, color: Colors.red),
                    color: Colors.white),
                SizedBox(height: 5),
                Text(
                  "Mattresses",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
