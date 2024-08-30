import 'package:flutter_getx/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "mohammad", price: "500", off: "50").obs;
}

