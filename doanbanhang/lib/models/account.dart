class User {
  int? id;
  late String name;
  late String email;
  String? gioiTinh;
  String? ngaySinh;
  String? diachi;
  String? sodienthoai;
  int? quyen;
  int? trangThai;

  User({this.id, required this.name, required this.email, this.gioiTinh, this.ngaySinh, this.diachi, this.sodienthoai, this.quyen, this.trangThai});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gioiTinh = json['GioiTinh'];
    ngaySinh = json['NgaySinh'];
    diachi = json['diachi'];
    sodienthoai = json['sodienthoai'];
    quyen = json['Quyen'];
    trangThai = json['TrangThai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['GioiTinh'] = gioiTinh;
    data['NgaySinh'] = ngaySinh;
    data['diachi'] = diachi;
    data['sodienthoai'] = sodienthoai;
    data['Quyen'] = quyen;
    data['TrangThai'] = trangThai;
    return data;
  }

  User.empty() {
    id = -1;
    name = "";
    email = "";
    gioiTinh = "";
    ngaySinh = "";
    diachi = "";
    sodienthoai = "";
    quyen = -1;
    trangThai = -1;
  }
}
