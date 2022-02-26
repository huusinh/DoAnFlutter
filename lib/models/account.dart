import 'diachi.dart';

class User {
  int? id;
  late String name;
  late String email;
  int? gioiTinh;
  String? ngaySinh;
  String? diaChi;
  String? sDT;
  int? quyen;
  int? trangThai;
  DiaChi? diaChii;

  User(
      {this.id,
      required this.name,
      required this.email,
      this.gioiTinh,
      this.ngaySinh,
      this.diaChi,
      this.sDT,
      this.quyen,
      this.trangThai,
      this.diaChii});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gioiTinh = json['GioiTinh'];
    ngaySinh = json['NgaySinh'];
    diaChi = json['diachi'];
    sDT = json['sodienthoai'].toString();
    quyen = json['Quyen'];
    trangThai = json['TrangThai'];
    diaChii = json['dia_chi'] != null ? DiaChi.fromJson(json['dia_chi']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['GioiTinh'] = gioiTinh;
    data['NgaySinh'] = ngaySinh;
    data['diachi'] = diaChi;
    data['sodienthoai'] = sDT;
    data['Quyen'] = quyen;
    data['TrangThai'] = trangThai;
    return data;
  }

  User.empty() {
    id = 1;
    name = "";
    email = "";
    gioiTinh = 0;
    ngaySinh = "";
    diaChi = "";
    sDT = "";
    quyen = -1;
    trangThai = -1;
  }
}
