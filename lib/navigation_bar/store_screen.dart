import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 2,
        //   leading: IconButton(
        //       icon: (Icon(Icons.keyboard_arrow_left_outlined,
        //           color: Colors.black, size: 35)),
        //       onPressed: () => Navigator.pop(context)),
        // ),
        body: Container(
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
