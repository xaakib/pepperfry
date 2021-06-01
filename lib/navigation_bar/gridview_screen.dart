import 'package:flutter/material.dart';
import 'package:idiya/navigation_bar/products_details.dart';
import 'package:woocommerce/models/products.dart';
import 'package:woocommerce/woocommerce.dart';

class GridviewScreen extends StatefulWidget {
  final int id;
  final String barName;

  const GridviewScreen({Key key, this.id, this.barName}) : super(key: key);

  @override
  _GridviewScreenState createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  WooCommerce wooCommerce = WooCommerce(
    baseUrl: "https://idiya.co.nz",
    consumerKey: "ck_a2c1e52297db9441bcc51eb1f60551f39b0981eb",
    consumerSecret: "cs_90a2fbaf03dd37ff7f50afcdb53c45111f589eb0",
    isDebug: true,
  );
  List<WooProduct> all = [];

  alls() async {
    List<WooProduct> productsss = await wooCommerce.getProducts(
        category: widget.id.toString(), perPage: 30);
    setState(() {
      all = productsss;
      print(all.length);
    });
  }

  @override
  void initState() {
    super.initState();
    alls();
  }

  @override
  void dispose() {
    super.dispose();
    all.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.barName),
      ),
      body: all == null
          ? Center(child: CircularProgressIndicator())
          : Container(
              height: double.infinity,
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 40),
                  itemCount: all.length,
                  itemBuilder: (BuildContext ctx, index) {
                    int productId = all[index].id;
                    return InkWell(
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
                              return ProducsDetails(
                                id: productId,
                              );
                            },
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 80,
                            color: Colors.grey,
                            child: FadeInImage(
                              height: 100,
                              width: 80,
                              fit: BoxFit.fill,
                              image: NetworkImage(all[index].images[0].src),
                              placeholder:
                                  AssetImage("assets/Icons/loadingiamage.gif"),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            all[index].name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
    );
  }
}
