class Invoice {
  int? id;
  String? ngaylap;
  String? diachi;
  String? sodienthoai;
  String? ghichu;
  int? tongtien;
  int? idtaikhoan;
  int? trangThai;
  List<ChiTietHoaDon>? chiTietHoaDon;

  Invoice({this.id, this.ngaylap, this.diachi, this.sodienthoai, this.ghichu, this.tongtien, this.idtaikhoan, this.chiTietHoaDon});

  Invoice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ngaylap = json['ngaylap'];
    diachi = json['diachi'];
    sodienthoai = json['sodienthoai'];
    ghichu = json['ghichu'];
    tongtien = json['tongtien'];
    idtaikhoan = json['idtaikhoan'];
    trangThai = json['TrangThai'];
    if (json['chi_tiet_hoa_don'] != null) {
      chiTietHoaDon = <ChiTietHoaDon>[];
      json['chi_tiet_hoa_don'].forEach((v) {
        chiTietHoaDon!.add(ChiTietHoaDon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ngaylap'] = ngaylap;
    data['diachi'] = diachi;
    data['sodienthoai'] = sodienthoai;
    data['ghichu'] = ghichu;
    data['tongtien'] = tongtien;
    data['idtaikhoan'] = idtaikhoan;
    data['TrangThai'] = trangThai;
    if (chiTietHoaDon != null) {
      data['chi_tiet_hoa_don'] = chiTietHoaDon!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChiTietHoaDon {
  int? id;
  int? soluong;
  int? dongia;
  int? idsanpham;
  int? idhoadon;
  SanPham? sanPham;

  ChiTietHoaDon({this.id, this.soluong, this.dongia, this.idsanpham, this.idhoadon, this.sanPham});

  ChiTietHoaDon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    soluong = json['soluong'];
    dongia = json['dongia'];
    idsanpham = json['idsanpham'];
    idhoadon = json['idhoadon'];
    sanPham = json['san_pham'] != null ? SanPham.fromJson(json['san_pham']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['soluong'] = soluong;
    data['dongia'] = dongia;
    data['idsanpham'] = idsanpham;
    data['idhoadon'] = idhoadon;
    if (sanPham != null) {
      data['san_pham'] = sanPham!.toJson();
    }
    return data;
  }
}

class SanPham {
  int? id;
  String? image;
  String? tittle;
  String? description;
  int? price;
  int? size;
  int? loaiSanPhamId;
  String? color;

  SanPham({this.id, this.image, this.tittle, this.description, this.price, this.size, this.loaiSanPhamId, this.color});

  SanPham.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    tittle = json['tittle'];
    description = json['description'];
    price = json['price'];
    size = json['size'];
    loaiSanPhamId = json['loai_san_pham_id'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['tittle'] = tittle;
    data['description'] = description;
    data['price'] = price;
    data['size'] = size;
    data['loai_san_pham_id'] = loaiSanPhamId;
    data['color'] = color;
    return data;
  }
}
