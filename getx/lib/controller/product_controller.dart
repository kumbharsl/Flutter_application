import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/model/product_model.dart';

class ProductController extends GetxController {
  List<Product> productData = [];

  List<Product> cartItem = List<Product>.empty().obs;

  addtoCart(Product item) {
    print('calling addTocard');
    cartItem.add(item);
  }

  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);
  int get count => cartItem.length;
  @override
  void onInit() {
    super.onInit();
    fatchProductData();
  }

  fatchProductData() async {
    await Future.delayed(Duration(seconds: 5));
    List<Product> serverResponse = [
      Product(
        id: 1,
        price: 499,
        productDescription: '',
        productImage:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flipkart.com%2Fdazeel-printed-men-round-neck-black-t-shirt%2Fp%2Fitm42518186453af%3Fpid%3DTSHGXVY6FFT3QDDE%26lid%3DLSTTSHGXVY6FFT3QDDEUO5Z4X%26marketplace%3DFLIPKART%26cmpid%3Dcontent_t-shirt_8965229628_gmc&psig=AOvVaw0glV-Il354FzrQrOG_JnjP&ust=1722063627795000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjl1ImRxIcDFQAAAAAdAAAAABAE",
        productName: 'T-Shirt',
        favorite: false,
      ),
      Product(
        id: 2,
        price: 799,
        productDescription: '',
        productImage:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flipkart.com%2Fdazeel-printed-men-round-neck-black-t-shirt%2Fp%2Fitm42518186453af%3Fpid%3DTSHGXVY6FFT3QDDE%26lid%3DLSTTSHGXVY6FFT3QDDEUO5Z4X%26marketplace%3DFLIPKART%26cmpid%3Dcontent_t-shirt_8965229628_gmc&psig=AOvVaw0glV-Il354FzrQrOG_JnjP&ust=1722063627795000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjl1ImRxIcDFQAAAAAdAAAAABAE",
        productName: 'T-Shirt',
        favorite: false,
      ),
      Product(
        id: 3,
        price: 599,
        productDescription: '',
        productImage:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flipkart.com%2Fdazeel-printed-men-round-neck-black-t-shirt%2Fp%2Fitm42518186453af%3Fpid%3DTSHGXVY6FFT3QDDE%26lid%3DLSTTSHGXVY6FFT3QDDEUO5Z4X%26marketplace%3DFLIPKART%26cmpid%3Dcontent_t-shirt_8965229628_gmc&psig=AOvVaw0glV-Il354FzrQrOG_JnjP&ust=1722063627795000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjl1ImRxIcDFQAAAAAdAAAAABAE",
        productName: 'T-Shirt',
        favorite: false,
      ),
      Product(
        id: 4,
        price: 999,
        productDescription: '',
        productImage:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flipkart.com%2Fdazeel-printed-men-round-neck-black-t-shirt%2Fp%2Fitm42518186453af%3Fpid%3DTSHGXVY6FFT3QDDE%26lid%3DLSTTSHGXVY6FFT3QDDEUO5Z4X%26marketplace%3DFLIPKART%26cmpid%3Dcontent_t-shirt_8965229628_gmc&psig=AOvVaw0glV-Il354FzrQrOG_JnjP&ust=1722063627795000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjl1ImRxIcDFQAAAAAdAAAAABAE",
        productName: 'T-Shirt',
        favorite: false,
      ),
    ];
    productData.assignAll(serverResponse);
    print(productData);
    update();
  }
}
