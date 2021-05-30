import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:idiya/global/global_api.dart';
import 'package:idiya/models/product_models.dart';

class ApiServices {
  static Future<List<ProductsModel>> getProducts() async {
    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode(GlobalApi.authUsername + GlobalApi.authPassword));
    final response = await http.get(Uri.parse(GlobalApi.productApi),
        headers: <String, String>{'authorization': basicAuth});

    if (response.statusCode == 200) {
      var data = response.body;
      return productsModelFromJson(data);
    } else {
      return null;
    }
  }
}
