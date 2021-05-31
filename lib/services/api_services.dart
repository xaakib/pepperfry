import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:idiya/global/global_api.dart';
import 'package:idiya/models/product_models.dart';

class ApiServices {
  static Future<List<ProductsModel>> getProducts() async {
    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode(GlobalApi.authUsername + GlobalApi.authPassword));
    final response = await http.get(
        Uri.parse("https://idiya.co.nz/wp-json/wc/v3/products"),
        headers: <String, String>{'authorization': basicAuth});

    if (response.statusCode == 200) {
      var data = response.body;
      print("apiServices : $data");
      return productsModelFromJson(data);
    } else {
      print("No api calling");
      return null;
    }
  }
}
