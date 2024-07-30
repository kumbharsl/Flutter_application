class Product {
  final int id;
  final String productName;
  final String productImage;
  final String productDescription;
  final double price;
  bool favorite;

  Product({
    required this.id,
    required this.productName,
    required this.productImage,
    required this.productDescription,
    required this.price,
    required this.favorite,
  });
}
