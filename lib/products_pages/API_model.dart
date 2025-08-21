class ApiModel {
  final List<Product> products;
  final int total;
  final int skip;
  final int limit;

  ApiModel({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
    products: List<Product>.from(
      (json['products'] as List).map(
        (x) => Product.fromJson(x as Map<String, dynamic>),
      ),
    ),
    total: json['total'] as int,
    skip: json['skip'] as int,
    limit: json['limit'] as int,
  );

  Map<String, dynamic> toJson() => {
    'products': products.map((x) => x.toJson()).toList(),
    'total': total,
    'skip': skip,
    'limit': limit,
  };
}

class Product {
  final int? id;
  final String? title;
  final String? description;
  final double? price;
  final String? category;
  final String? thumbnail;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.category,
    this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    price: (json['price'] as num).toDouble(),
    category: json['category'] as String,
    thumbnail: json['thumbnail'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'category': category,
    'thumbnail': thumbnail,
  };
}
