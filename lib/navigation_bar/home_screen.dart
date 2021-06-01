import 'package:flutter/material.dart';
import 'package:idiya/navigation_bar/gridview_screen.dart';
import 'package:idiya/navigation_bar/products_details.dart';
import 'package:woocommerce/woocommerce.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  List<WooProduct> furnitureSale = [];
  List<WooProduct> furnitureSale2 = [];

  List<WooProduct> treeDwallpapers = [];
  List<WooProduct> alexpro = [];

  List<WooProduct> featuredProducts = [];
  WooCommerce wooCommerce = WooCommerce(
    baseUrl: "https://idiya.co.nz",
    consumerKey: "ck_a2c1e52297db9441bcc51eb1f60551f39b0981eb",
    consumerSecret: "cs_90a2fbaf03dd37ff7f50afcdb53c45111f589eb0",
    isDebug: true,
  );

  furnitureSale1() async {
    List<WooProduct> productsss = await wooCommerce.getProducts(
      category: "3239",
    );
    setState(() {
      furnitureSale = productsss;
      print(furnitureSale.length);
    });
  }

  furnitureSal2() async {
    List<WooProduct> productsss = await wooCommerce.getProducts(
      category: "3240",
    );
    setState(() {
      furnitureSale2 = productsss;
      print(furnitureSale2.length);
    });
  }

  treeDwallpaper() async {
    List<WooProduct> productsss = await wooCommerce.getProducts(
      category: "3234",
    );
    setState(() {
      treeDwallpapers = productsss;
      print(furnitureSale2.length);
    });
  }

  alex() async {
    List<WooProduct> productsss = await wooCommerce.getProducts(
      category: "3368",
    );
    setState(() {
      alexpro = productsss;
      print(alexpro.length);
    });
  }

  @override
  void initState() {
    super.initState();
    //You would want to use a feature builder instead.
    furnitureSale1();
    furnitureSal2();
    treeDwallpaper();
    alex();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                _scaffoldkey.currentState.openDrawer();
              }),
          centerTitle: false,
          leadingWidth: 30,
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
        drawer: DrawerClass(),
        body: furnitureSale == null
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 230,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          HomeIconsWidgets(),
                          SizedBox(height: 10),
                          HomeIconsWidgetsTwo(),
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
                          Text("Furniture Sale",
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("9-furniture-sale",
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
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final product = furnitureSale[index];
                                  return SuperFreshItems(
                                      id: product.id,
                                      name: product.name,
                                      imageUrl: product.images[0].src);
                                },
                                itemCount: furnitureSale.length,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Brands For All Types",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("3 Seaters Sofa",
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("3-seat-sofa",
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
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final product = furnitureSale2[index];
                                  return SuperFreshItems(
                                      id: product.id,
                                      name: product.name,
                                      imageUrl: product.images[0].src);
                                },
                                itemCount: furnitureSale2.length,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Brands For All Types",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Text("3D Wallpaper",
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("3d-wallpaper",
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
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final product = treeDwallpapers[index];
                                  return SuperFreshItems(
                                      id: product.id,
                                      name: product.name,
                                      imageUrl: product.images[0].src);
                                },
                                itemCount: treeDwallpapers.length,
                              )),
                          SizedBox(height: 20),
                          Text("Alex",
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text("alex",
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
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final product = alexpro[index];
                                  return SuperFreshItems(
                                      id: product.id,
                                      name: product.name,
                                      imageUrl: product.images[0].src);
                                },
                                itemCount: alexpro.length,
                              )),
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
  final String imageUrl, name;
  final int id;

  const SuperFreshItems({Key key, this.imageUrl, this.name, this.id})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 700),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secAnimation,
                  Widget child) {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.elasticOut);
                return ScaleTransition(
                  alignment: Alignment.center,
                  scale: animation,
                  child: child,
                );
              },
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secAnimation) {
                return ProducsDetails(
                  id: id,
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 180,
              child: FadeInImage(
                width: 180,
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl == null
                    ? "https://mk0idiyaf2q0owb5siq.kinstacdn.com/wp-content/uploads/2021/04/chair-270x270.png"
                    : imageUrl),
                placeholder: AssetImage("assets/Icons/loadingiamage.gif"),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 180,
              child: Text(
                name == null ? "" : name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 180,
              child: Row(
                children: [
                  Text(
                    "NZ \$600",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "NZ \$560",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(width: 2),
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
        height: 100,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 700),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation,
                        Widget child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        alignment: Alignment.center,
                        scale: animation,
                        child: child,
                      );
                    },
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation) {
                      return GridviewScreen(
                        id: 3808,
                        barName: "Furniture",
                      );
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/Icons/Sofa-512.png",
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 700),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation,
                        Widget child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        alignment: Alignment.center,
                        scale: animation,
                        child: child,
                      );
                    },
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation) {
                      return GridviewScreen(
                        id: 2481,
                        barName: "Living",
                      );
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/Icons/tv.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Living",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 700),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation,
                        Widget child) {
                      animation = CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut);
                      return ScaleTransition(
                        alignment: Alignment.center,
                        scale: animation,
                        child: child,
                      );
                    },
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation) {
                      return GridviewScreen(
                        id: 2321,
                        barName: "Bedroom",
                      );
                    },
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/Icons/bed.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Bedroom",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Icons/crib.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Kids Room",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Icons/matress.png",
                      ),
                    ),
                  ),
                ),
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
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.30),
                          borderRadius: BorderRadius.circular(5)),
                      height: 40,
                    ),
                  ),
                  Positioned(
                      bottom: 21,
                      left: 10,
                      child: Text(
                        "Hi Ayush Sehgal,",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  Positioned(
                      bottom: 5,
                      left: 10,
                      child: Text(
                        "ayush_sehgal@idiya.co.nz",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                      )),
                ],
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
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Corporate Enquiries",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Find A Studio",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Buy on Phone",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Our Blogs",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Partner With Us",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "My Account",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Track Order",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text("Need Help?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ),
                    ListTile(
                      title: Text("About Us",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
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

class HomeIconsWidgetsTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Icons/curtains .png",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Furnishings",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Icons/plant.png"),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Decor",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Icons/light.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lighting",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Icons/almira.png"),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Modular\nFurniture",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/Icons/sale.png"),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Cleanrance\nSale",
                  textAlign: TextAlign.center,
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
