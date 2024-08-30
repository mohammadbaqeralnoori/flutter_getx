import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/product_controller.dart';
// import 'package:flutter_getx/model/product_model.dart';
import 'package:flutter_getx/view/product_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainScreen extends StatelessWidget {
  // var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int> (0);

  // Obx
  // GetX
  // GetBuilder

  ProductController productController = Get.put(ProductController());

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    val!.name = "m";
                    val.price = "10";
                    val.off = "10%";
                  });
                },
                child: Text("press")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreen());
                },
                child: Text("ProductScreen"))
          ],
        ),
      ),
    );
  }
}
