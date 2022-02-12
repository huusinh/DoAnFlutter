class User {
  int? id;
  String? name;
  String? email;
  String? diachi;
  String? sodienthoai;
  
  

  User(
      {this.id,
      this.name,
      this.email,
      this.diachi,
      this.sodienthoai,
     });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    diachi = json['diachi'];
    sodienthoai = json['sodienthoai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['diachi'] = this.diachi;
    data['sodienthoai'] = this.sodienthoai;
    
    return data;
  }
}