class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon;

  
  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThaiMuon);

  // Getters
  String get maSach => _maSach;
  String get tenSach => _tenSach;
  String get tacGia => _tacGia;
  bool get trangThaiMuon => _trangThaiMuon;

  // Setters
  set maSach(String value) {
    if (value.isNotEmpty) {
      _maSach = value;
    } else {
      print("Mã sách không được để trống!");
    }
  }

  set tenSach(String value) {
    if (value.isNotEmpty) {
      _tenSach = value;
    } else {
      print("Tên sách không được để trống!");
    }
  }

  set tacGia(String value) {
    if (value.isNotEmpty) {
      _tacGia = value;
    } else {
      print("Tác giả không được để trống!");
    }
  }

  set trangThaiMuon(bool value) {
    _trangThaiMuon = value;
  }

  // Phương thức hiển thị thông tin sách
  void hienThiThongTin() {
    print('Mã sách: $_maSach');
    print('Tên sách: $_tenSach');
    print('Tác giả: $_tacGia');
    print('Trạng thái mượn: ${_trangThaiMuon ? "Đã mượn" : "Chưa mượn"}');
  }
}


