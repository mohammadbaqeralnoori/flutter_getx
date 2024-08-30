import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/product_controller.dart';
// import 'package:flutter_getx/model/product_model.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Column(
                  children: [
                    Text(
                      "product name : ${productController.productModel.value.name}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      "product price : ${productController.productModel.value.price}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      "product pff : ${productController.productModel.value.off}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  productController.productModel.update((val) {
                    val!.name = "noori";
                    val.price = "noori";
                    val.off = "10%";
                  });
                },
                child: Text("press")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("back"))
          ],
        ),
      ),
    );
  }
}
