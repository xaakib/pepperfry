import 'package:get/state_manager.dart';
import 'package:idiya/models/product_models.dart';
import 'package:idiya/services/api_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var productsLists = List<ProductsModel>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    try {
      var todos = await ApiServices.getProducts();
      if (todos != null) {
        productsLists.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }
}
