import 'dart:core';
import 'dienthoai.dart';

class HoaDon {
  
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoaiDuocBan;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  
  HoaDon(
    this._maHoaDon,
    this._ngayBan,
    this._dienThoaiDuocBan,
    this._soLuongMua,
    this._giaBanThucTe,
    this._tenKhachHang,
    this._soDienThoaiKhach,
  ) {
    
    maHoaDon = _maHoaDon;
    ngayBan = _ngayBan;
    soLuongMua = _soLuongMua;
    giaBanThucTe = _giaBanThucTe;
    tenKhachHang = _tenKhachHang;
    soDienThoaiKhach = _soDienThoaiKhach;
  }


  String get maHoaDon => _maHoaDon;
  set maHoaDon(String maHoaDon) {
    if (maHoaDon.isEmpty || !RegExp(r'^HD-\d{3}$').hasMatch(maHoaDon)) {
      throw ArgumentError('Mã hóa đơn không hợp lệ! Định dạng: "HD-XXX".');
    }
    _maHoaDon = maHoaDon;
  }

  DateTime get ngayBan => _ngayBan;
  set ngayBan(DateTime ngayBan) {
    if (ngayBan.isAfter(DateTime.now())) {
      throw ArgumentError('Ngày bán không được sau ngày hiện tại!');
    }
    _ngayBan = ngayBan;
  }

  DienThoai get dienThoaiDuocBan => _dienThoaiDuocBan;

  int get soLuongMua => _soLuongMua;
  set soLuongMua(int soLuongMua) {
    if (soLuongMua <= 0 || soLuongMua > _dienThoaiDuocBan.soLuongTonKho) {
      throw ArgumentError(
          'Số lượng mua phải lớn hơn 0 và nhỏ hơn hoặc bằng số lượng tồn kho!');
    }
    _soLuongMua = soLuongMua;
  }

  double get giaBanThucTe => _giaBanThucTe;
  set giaBanThucTe(double giaBanThucTe) {
    if (giaBanThucTe <= 0) {
      throw ArgumentError('Giá bán thực tế phải lớn hơn 0!');
    }
    _giaBanThucTe = giaBanThucTe;
  }

  String get tenKhachHang => _tenKhachHang;
  set tenKhachHang(String tenKhachHang) {
    if (tenKhachHang.isEmpty) {
      throw ArgumentError('Tên khách hàng không được rỗng!');
    }
    _tenKhachHang = tenKhachHang;
  }

  String get soDienThoaiKhach => _soDienThoaiKhach;
  set soDienThoaiKhach(String soDienThoaiKhach) {
    if (soDienThoaiKhach.isEmpty || !RegExp(r'^\d{10}$').hasMatch(soDienThoaiKhach)) {
      throw ArgumentError('Số điện thoại khách không hợp lệ! Định dạng: 10 chữ số.');
    }
    _soDienThoaiKhach = soDienThoaiKhach;
  }


  double tinhTongTien() {
    return _soLuongMua * _giaBanThucTe;
  }


  double tinhLoiNhuanThucTe() {
    return (_giaBanThucTe - _dienThoaiDuocBan.giaNhap) * _soLuongMua;
  }


  void hienThiThongTin() {
    print('Mã hóa đơn: $_maHoaDon');
    print('Ngày bán: $_ngayBan');
    print('Tên điện thoại: ${_dienThoaiDuocBan.tenDienThoai}');
    print('Số lượng mua: $_soLuongMua');
    print('Giá bán thực tế: $_giaBanThucTe');
    print('Tên khách hàng: $_tenKhachHang');
    print('Số điện thoại khách: $_soDienThoaiKhach');
    print('Tổng tiền: ${tinhTongTien()}');
    print('Lợi nhuận thực tế: ${tinhLoiNhuanThucTe()}');
  }
}
