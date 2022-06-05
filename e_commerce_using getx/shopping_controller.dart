import 'package:flutter_application_2/add_to_cart/product.dart';
import 'package:flutter_application_2/add_to_cart/product_service.dart';
import 'package:get/get.dart';
class ShoppingController extends GetxController{
  List<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }


void getProductDetails() async{
  products.assignAll(ProductService().getProducts().toList());
}
}