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

  User({this.id, required this.name, required this.email, this.gioiTinh, this.ngaySinh, this.diaChi, this.sDT, this.quyen, this.trangThai});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gioiTinh = json['GioiTinh'];
    ngaySinh = json['NgaySinh'];
    diaChi = json['DiaChi'];
    sDT = json['SDT'].toString();
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
    data['DiaChi'] = diaChi;
    data['SDT'] = sDT;
    data['Quyen'] = quyen;
    data['TrangThai'] = trangThai;
    return data;
  }

  User.empty() {
    id = -1;
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
