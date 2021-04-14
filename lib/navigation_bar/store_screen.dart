import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
           centerTitle: false,
          leadingWidth: 0,
          title: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Icons/diana_icon.png"))),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Icons/search-512.png"))),
              ),
            ),
            SizedBox(width: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Icons/empty_wishlist.png"))),
              ),
            ),
            SizedBox(width: 10),
            IconButton(
                icon: Icon(Icons.shopping_cart_outlined,
                    size: 30, color: Colors.black),
                onPressed: () {}),
          ],
        ),
        body: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: storeItes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minVerticalPadding: 20,
                      hoverColor: Colors.black.withOpacity(0.03),
                      title: Text(
                        storeItes[index].title,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded,
                          color: Colors.black, size: 32),
                    );
                  }),
            )));
  }
}

class StoreItems {
  final String title;

  StoreItems({this.title});
}

List<StoreItems> storeItes = [
  StoreItems(
    title: "FURNITURE",
  ),
  StoreItems(
    title: "LIVING",
  ),
  StoreItems(
    title: "BEDROOM",
  ),
  StoreItems(
    title: "KIDS ROOM",
  ),
  StoreItems(
    title: "MATTRESSES",
  ),
  StoreItems(
    title: "FURNISHINGS",
  ),
  StoreItems(
    title: "DECOR",
  ),
  StoreItems(
    title: "LIGHTING",
  ),
  StoreItems(
    title: "MODULAR FURNITURE",
  ),
  StoreItems(
    title: "CLEARNCE SALE",
  ),
  StoreItems(
    title: "DECOR",
  ),
  StoreItems(
    title: "LIGHTING",
  ),
  StoreItems(
    title: "LIGHTING",
  ),
  StoreItems(
    title: "MODULAR FURNITURE",
  ),
  StoreItems(
    title: "CLEARNCE SALE",
  ),
  StoreItems(
    title: "DECOR",
  ),
  StoreItems(
    title: "LIGHTING",
  ),
];
