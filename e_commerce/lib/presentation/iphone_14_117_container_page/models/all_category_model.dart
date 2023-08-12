class AllCategoryModel {
  final String id;
  final String name;
  final String image;

  AllCategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory AllCategoryModel.fromJson(Map<String, dynamic> json) {
    return AllCategoryModel(
      id: json['_id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
