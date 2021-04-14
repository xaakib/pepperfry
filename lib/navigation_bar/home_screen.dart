import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black.withOpacity(0.03),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                scaffoldKey.currentState.openDrawer();
              }),
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
        drawer: DrawerClass(),
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
                              image: AssetImage(
                                  "assets/Icons/shoping_cover.png"))),
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

class DrawerClass extends StatefulWidget {
  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.shopify.com/s/files/1/2249/1043/products/Grey_grande.jpg?v=1577676106"))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 20,
                        child: Text(
                          "Hi tahmid turzo,",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                    Positioned(
                        bottom: 5,
                        child: Text(
                          "tahamidturzo3@gmail.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black.withOpacity(0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SHOP BY DEPARMENT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 1),
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded),
                        ],
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Gifts Cards",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Corporate Enquiries",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Find A Studio",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Buy on Phone",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Our Blogs",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Partner With Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "My Account",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Track Order",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Need Help?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "About Us",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
