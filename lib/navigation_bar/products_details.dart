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
                                    "https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

                                    // products.images[index].src
                                    ),
                              )),
                        ),
                      );
                    },
                    slideIndicator: CircularSlideIndicator(
                      indicatorBackgroundColor: Colors.red,
                      currentIndicatorColor: Colors.green
                    ),
                    slideTransform: CubeTransform(
                      rotationAngle: 0
                    ),
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
                  SizedBox(height: 5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
