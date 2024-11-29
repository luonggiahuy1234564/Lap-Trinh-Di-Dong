class DienThoai {

  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _soLuongTonKho;
  bool _trangThai;

  DienThoai(
    this._maDienThoai,
    this._tenDienThoai,
    this._hangSanXuat,
    this._giaNhap,
    this._giaBan,
    this._soLuongTonKho,
    this._trangThai,
  ) {
    
    maDienThoai = _maDienThoai;
    tenDienThoai = _tenDienThoai;
    hangSanXuat = _hangSanXuat;
    giaNhap = _giaNhap;
    giaBan = _giaBan;
    soLuongTonKho = _soLuongTonKho;
  }

 
  String get maDienThoai => _maDienThoai;
  set maDienThoai(String maDienThoai) {
    if (maDienThoai.isEmpty || !RegExp(r'^DT-\d{3}$').hasMatch(maDienThoai)) {
      throw ArgumentError('Mã điện thoại không hợp lệ! Định dạng: "DT-XXX".');
    }
    _maDienThoai = maDienThoai;
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String tenDienThoai) {
    if (tenDienThoai.isEmpty) {
      throw ArgumentError('Tên điện thoại không được rỗng!');
    }
    _tenDienThoai = tenDienThoai;
  }

  String get hangSanXuat => _hangSanXuat;
  set hangSanXuat(String hangSanXuat) {
    if (hangSanXuat.isEmpty) {
      throw ArgumentError('Hãng sản xuất không được rỗng!');
    }
    _hangSanXuat = hangSanXuat;
  }

  double get giaNhap => _giaNhap;
  set giaNhap(double giaNhap) {
    if (giaNhap <= 0) {
      throw ArgumentError('Giá nhập phải lớn hơn 0!');
    }
    _giaNhap = giaNhap;
  }

  double get giaBan => _giaBan;
  set giaBan(double giaBan) {
    if (giaBan <= _giaNhap) {
      throw ArgumentError('Giá bán phải lớn hơn giá nhập!');
    }
    _giaBan = giaBan;
  }

  int get soLuongTonKho => _soLuongTonKho;
  set soLuongTonKho(int soLuongTonKho) {
    if (soLuongTonKho < 0) {
      throw ArgumentError('Số lượng tồn kho không được nhỏ hơn 0!');
    }
    _soLuongTonKho = soLuongTonKho;
  }

  bool get trangThai => _trangThai;
  set trangThai(bool value) {
    _trangThai = value;
  }

 
  double tinhLoiNhuan() {
    return (_giaBan - _giaNhap) * _soLuongTonKho;
  }

  bool coTheBanKhong() {
    return _soLuongTonKho > 0 && _trangThai;
  }

  void hienThiThongTin() {
    print('Mã điện thoại: $_maDienThoai');
    print('Tên điện thoại: $_tenDienThoai');
    print('Hãng sản xuất: $_hangSanXuat');
    print('Giá nhập: $_giaNhap');
    print('Giá bán: $_giaBan');
    print('Số lượng tồn kho: $_soLuongTonKho');
    print('Trạng thái: ${_trangThai ? "Đang kinh doanh" : "Ngừng kinh doanh"}');
  }

  
}
