import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:get/get.dart';
import 'package:idiya/navigation_bar/home_screen.dart';
import 'package:idiya/screens/login_screen.dart';
import 'package:idiya/screens/main_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_html/flutter_html.dart';

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
        home: token == null ? MainHome() : MainHome());
  }
}


// import 'package:flutter/material.dart';
// import 'package:woocommerce/woocommerce.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'WooCommerce Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: "Woo Commerce Demo"),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<WooProduct> products = [];
//   List<WooProduct> featuredProducts = [];
//   WooCommerce wooCommerce = WooCommerce(
//     baseUrl: "https://idiya.co.nz",
//     consumerKey: "ck_a2c1e52297db9441bcc51eb1f60551f39b0981eb",
//     consumerSecret: "cs_90a2fbaf03dd37ff7f50afcdb53c45111f589eb0",
//     isDebug: true,
//   );

//   getProducts() async {
//     products = await wooCommerce.getProducts(
//       category: "3825",
//     );
//     setState(() {});
//     print(products.toString());
//   }

//   singleProduct() async {
//     var product = await wooCommerce.getProductById(id: 27645);
//     print("Products Id : $product");
//   }

//   @override
//   void initState() {
//     super.initState();
//     //You would want to use a feature builder instead.
//     getProducts();
//     singleProduct();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
//     final double itemWidth = size.width / 2;
//     return Scaffold(
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverToBoxAdapter(
//               child: Container(
//                 margin: EdgeInsets.all(10),
//                 child: Text(
//                   'My Awesome Shop',
//                   style: Theme.of(context)
//                       .textTheme
//                       .headline
//                       .apply(color: Colors.blueGrey),
//                 ),
//               ),
//             ),
//             SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: (itemWidth / itemHeight),
//                 mainAxisSpacing: 2,
//                 crossAxisSpacing: 1,
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   final product = products[index];
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => DetailsPage()));
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: <Widget>[
//                         Container(
//                           height: 230,
//                           width: 200,
//                           margin: EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: NetworkImage(
//                                   product.images[0].src,
//                                 ),
//                                 fit: BoxFit.cover),
//                             color: Colors.pinkAccent,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                           ),
//                           //child: Image.network(product.images[0].src, fit: BoxFit.cover,),
//                         ),
//                         Text(
//                           product.name ?? 'Loading...',
//                           style: Theme.of(context)
//                               .textTheme
//                               .title
//                               .apply(color: Colors.blueGrey),
//                         ),
//                         Text(
//                           '\$' + product.price ?? '',
//                           style: Theme.of(context).textTheme.subtitle,
//                         )
//                       ],
//                     ),
//                   );
//                 },
//                 childCount: products.length,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DetailsPage extends StatefulWidget {
//   @override
//   _DetailsPageState createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         child: ListView(
//           children: [
//             Text("data"),
//             Html(
//               data:
//                   "<p>Product Information:</p>\n<p>6 x Table spoons<br />\n6 x Table forks<br />\n6 x Table Knives<br />\n6 x Teaspoons</p>\n<p>Heavy duty stainless steel sets and simple classic modern design make the cutlery sets anti-rust, sturdy</p>\n<p>Dishwasher safe<br />\nBend Resistant</p>\n<p>Package details<br />\n24 cm x 14 cm x 5 cm</p>\n",
//             ),
//             Container(
//               height: 400,
//               child: CarouselSlider.builder(
//                   slideBuilder: (index) {
//                     // var products = productController.productsLists[index];
//                     // print(products.images[index].src);

//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.red,
//                             image: DecorationImage(
//                               fit: BoxFit.cover,
//                               image: NetworkImage(
//                                   "https://images.unsplash.com/photo-1601933470096-0e34634ffcde?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

//                                   // products.images[index].src
//                                   ),
//                             )),
//                       ),
//                     );
//                   },
//                   slideIndicator: CircularSlideIndicator(
//                       indicatorBackgroundColor: Colors.black.withOpacity(0.3),
//                       currentIndicatorColor: Colors.redAccent),
//                   slideTransform: CubeTransform(rotationAngle: 0),
//                   itemCount: 10),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
