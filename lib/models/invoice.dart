class Invoice {
  int id;
  String diachi;
  String sodienthoai;
  String ghichu;
  int tongtien;
  int idtaikhoan;
  int soluong;
  int dongia;
  int idsanpham;
  int idhoadon;

  Invoice(
      {required this.id,
    required  this.diachi,
    required  this.sodienthoai,
    required  this.ghichu,
     required this.tongtien,
    required  this.idtaikhoan,
    required  this.soluong,
    required  this.dongia,
    required  this.idsanpham,
     required this.idhoadon});

  Invoice.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    diachi = json['diachi'],
    sodienthoai = json['sodienthoai'],
    ghichu = json['ghichu'],
    tongtien = json['tongtien'],
    idtaikhoan = json['idtaikhoan'],
    soluong = json['soluong'],
    dongia = json['dongia'],
    idsanpham = json['idsanpham'],
    idhoadon = json['idhoadon'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['diachi'] = this.diachi;
    data['sodienthoai'] = this.sodienthoai;
    data['ghichu'] = this.ghichu;
    data['tongtien'] = this.tongtien;
    data['idtaikhoan'] = this.idtaikhoan;
    data['soluong'] = this.soluong;
    data['dongia'] = this.dongia;
    data['idsanpham'] = this.idsanpham;
    data['idhoadon'] = this.idhoadon;
    return data;
  }
}