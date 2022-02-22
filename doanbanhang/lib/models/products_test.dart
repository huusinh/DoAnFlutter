class Product {
  int id;
  String image;
  String tittle;
  String description;
  int price;
  int size;
  int loaiSanPhamId;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String color;

  Product(
      {required this.id,
      required this.image,
      required this.tittle,
      required this.description,
      required this.price,
      required this.size,
      required this.loaiSanPhamId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      required this.color});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        image: json['image'],
        tittle: json['tittle'],
        description: json['description'],
        price: json['price'],
        size: json['size'],
        loaiSanPhamId: json['loai_san_pham_id'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
        deletedAt: json['deleted_at'],
        color: json['color'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['tittle'] = this.tittle;
    data['description'] = this.description;
    data['price'] = this.price;
    data['size'] = this.size;
    data['loai_san_pham_id'] = this.loaiSanPhamId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['color'] = this.color;
    return data;
  }
}
