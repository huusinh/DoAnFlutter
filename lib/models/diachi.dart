class DiaChi {
  int? id;
  int? idtaikhoan;
  String? tennguoinhan;
  String? sodienthoai;
  String? tinhthanhpho;
  String? quanhuyen;
  String? phuongxa;
  String? diachichitiet;

  DiaChi({this.id, this.idtaikhoan, this.tennguoinhan, this.sodienthoai, this.tinhthanhpho, this.quanhuyen, this.phuongxa, this.diachichitiet});

  DiaChi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idtaikhoan = json['idtaikhoan'];
    tennguoinhan = json['tennguoinhan'];
    sodienthoai = json['sodienthoai'];
    tinhthanhpho = json['tinhthanhpho'];
    quanhuyen = json['quanhuyen'];
    phuongxa = json['phuongxa'];
    diachichitiet = json['diachichitiet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idtaikhoan'] = idtaikhoan;
    data['tennguoinhan'] = tennguoinhan;
    data['sodienthoai'] = sodienthoai;
    data['tinhthanhpho'] = tinhthanhpho;
    data['quanhuyen'] = quanhuyen;
    data['phuongxa'] = phuongxa;
    data['diachichitiet'] = diachichitiet;
    return data;
  }
}
