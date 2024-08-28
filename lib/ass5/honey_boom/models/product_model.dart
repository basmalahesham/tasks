class ProductModel {
  String? image;
  String? title;
  int? price;
  int? id;

  // Default constructor
  ProductModel({this.image, this.title, this.price, this.id});

  // Named constructor that creates an instance from a map
  ProductModel.fromDb(Map<String, dynamic> map) {
    image = map['image'];
    title = map['title'];
    price = map['price'];
    id = map['id'];
  }

  // Method to convert the instance back to a map (optional)
  Map<String, dynamic> toMapForDb() {
    return {
      'image': image,
      'title': title,
      'price': price,
      'id': id,
    };
  }
}