class User {
  final int id;
  final String email;
  final String password;
  final String GioiTinh;
  final String NgaySinh;
  final String DiaChi;
  final String SDT;
  User({
    required this.id,
    required this.email,
      required this.password,
     required this.GioiTinh,
      required this.NgaySinh,
      required this.DiaChi,
      required this.SDT,
  
  });

  User.fromJson(Map<String, dynamic> json) 
    :id = json['id'],
    email = json['email'],
    password = json['password'],
    GioiTinh = json['GioiTinh'],
    NgaySinh = json['NgaySinh'],
    DiaChi = json['DiaChi'],
    SDT = json['SDT'];
  
  

  Map<String, dynamic> toJson()=> {
    'id' : id,
    'email' : email,
    'password' : password,
    'GioiTinh' : GioiTinh,
    'NgaySinh' : NgaySinh,
    'DiaChi' : DiaChi,
    'SDT' : SDT,
  };
}