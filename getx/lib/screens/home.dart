import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/product_controller.dart';

class GetXScreen extends StatefulWidget {
  GetXScreen({super.key});

  @override
  State<GetXScreen> createState() => __GetXScreenStateState();
}

class __GetXScreenStateState extends State<GetXScreen> {
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('All Product List'),
        actions: [
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                label: GetX<ProductController>(
                  builder: (controller) =>
                      Text(productController.count.toString()),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<ProductController>(
              builder: (controller) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.grey.withOpacity(0.2), width: 1),
                        ),
                        elevation: 5,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 120,
                              width: double.infinity,
                              child: Image.network(
                                productController
                                    .productData[index].productImage,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: 120,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(productController
                                      .productData[index].productName),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      productController
                                              .productData[index].favorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Price : ${productController.productData[index].price}',
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      productController.addtoCart(
                                        productController.productData[index],
                                      );
                                    },
                                    child: const Text(
                                      'Add to Card',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: productController.productData.length,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GetX(
            builder: (controller) => Text(
              "Total Amount : ${productController.totalPrice}",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
