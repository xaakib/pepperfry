import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:get/get.dart';
import 'package:idiya/controller/products_controller.dart';

class ProducsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.hearing_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.black))
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Knobel Metal cabinet in black Color",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Bohemina by Property",
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.bus_alert_outlined, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "Fulfiled by Property",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                child: CarouselSlider.builder(
                    slideBuilder: (index) {
                      // var products = productController.productsLists[index];
                      // print(products.images[index].src);

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1601933470096-0e34634ffcde?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

                                    // products.images[index].src
                                    ),
                              )),
                        ),
                      );
                    },
                    slideIndicator: CircularSlideIndicator(
                        indicatorBackgroundColor: Colors.black.withOpacity(0.3),
                        currentIndicatorColor: Colors.redAccent),
                    slideTransform: CubeTransform(rotationAngle: 0),
                    itemCount: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₹32,999",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          Text(
                            "₹54,990MRP",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "(Inclusive of all taxes)",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Total Savigs",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "₹20,000 (40% off)",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Lockman And LockMmati Sale)",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.orange),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 40,
                    child: Center(
                        child: Text("BUY NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18))),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.red[300],
                        Colors.orange,
                      ],
                    )),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 40,
                          child: Center(
                              child: Text("ADD TO WISHLIST",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18))),
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 40,
                          child: Center(
                              child: Text("ADD TO CART",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18))),
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.share_sharp),
                        SizedBox(width: 5),
                        Text("Shear this product")
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PRODUCT DETAILS",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Container(
                        height: 1,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text(
                                "The clean and modern design of this furniture set, along with its nature-inspired colour scheme, will surely be a welcome match to your exteriors as well."),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dimensions :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(child: Text("20 KG"))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brands :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text(
                                "The clean and modern design of this furniture set, along with its nature-inspired colour scheme, will surely be a welcome match to your exteriors as well."),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Primary Materials :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(child: Text("Black"))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Storage :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text("36 Month`s warranty"),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text("Carpenter"),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Seater :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text("Carpenter"),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Color :",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 50),
                          Flexible(
                            child: Text("Carpenter"),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "DESCRIPTION",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "The clean and modern design of this furniture set, along with its nature-inspired colour scheme, will surely be a welcome match to your exteriors as well."),
                  SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
