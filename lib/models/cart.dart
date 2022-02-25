class Cart {
  String tittle;
  String image;
  int price;
  int id;
  int soluong;
  int idsanpham;

  Cart({required this.tittle,required this.image,required this.price,required this.id,required this.soluong, required this.idsanpham});

 factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    tittle : json['tittle'],
    image : json['image'],
    price : json['price'],
    id : json['id'],
    soluong : json['soluong'],
    idsanpham: json['idsanpham']
 );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['tittle'] = tittle;
    data['image'] = image;
    data['price'] = price;
    data['id'] = id;
    data['soluong'] = soluong;
    data['idsanpham']=idsanpham;
    return data;
  }
}