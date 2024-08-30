import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';

class ProductScreenGetx extends StatelessWidget {
  const ProductScreenGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
                init: ProductController(),
                builder: (ProductController productController) {
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
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductController>().productModel.update((val) {
                    val!.name = "ali";
                    val.price = "ali";
                    val.off = "ali";
                  });
                },
                child: Text("ali"))
          ],
        ),
      ),
    );
  }
}
