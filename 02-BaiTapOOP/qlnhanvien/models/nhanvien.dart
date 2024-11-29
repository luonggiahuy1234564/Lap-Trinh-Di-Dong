class Nhanvien {
  String _maNv;
  String _hoTen;
  double _luongCoBan;
  Nhanvien(this._maNv,this._hoTen,this._luongCoBan);


  String get maNV => _maNv;
  String get hoTen => _hoTen;
  double get luongCoBan => _luongCoBan;


  set maNv(String maNV){
    _maNv =(maNV.isNotEmpty)?maNV:_maNv;
  }


  set hoTen(String hoTen){
    _hoTen =(hoTen.isNotEmpty)?hoTen:hoTen;
  }

  set luongCanBan(double luongCoBan){
    if(luongCoBan>0){
    _luongCoBan= luongCoBan;
  }
}

double tinhluong(){
  return luongCoBan;
}

void hienThiThongTin(){
  print('Mã NV: $_maNv');
  print('Họ tên: $_hoTen');
  print('Lương cơ bản: $_luongCoBan');
  print('Tổng lương: ${tinhluong()}');
}
}