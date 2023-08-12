class ProductModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final int ratings;
  final List<ProductImage> images;
  final String size;
  final String colors;
  final String category;
  final int stock;
  final int numOfReviews;
  final List<String> reviews;
  final String user;
  final DateTime createdAt;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.ratings,
    required this.images,
    required this.size,
    required this.colors,
    required this.category,
    required this.stock,
    required this.numOfReviews,
    required this.reviews,
    required this.user,
    required this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      ratings: json['ratings'],
      images: (json['images'] as List)
          .map((imageJson) => ProductImage.fromJson(imageJson))
          .toList(),
      size: json['size'],
      colors: json['colors'],
      category: json['category'],
      stock: json['Stock'],
      numOfReviews: json['numOfReviews'],
      reviews: List<String>.from(json['reviews']),
      user: json['user'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}

class ProductImage {
  final String img;
  final String id;

  ProductImage({
    required this.img,
    required this.id,
  });

  factory ProductImage.fromJson(Map<String, dynamic> json) {
    return ProductImage(
      img: json['img'],
      id: json['_id'],
    );
  }
}
