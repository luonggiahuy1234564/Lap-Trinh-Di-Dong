import 'nhanvien.dart';
class Nhanvienbanhang extends Nhanvien{
  double _doanhSo;
  double _hoaHong;
  Nhanvienbanhang(String maNV,
  String hoTen,
  double luongCoBan,
  this._doanhSo,
  this._hoaHong): super(maNV,hoTen,luongCoBan);

  double get doanhSo =>_doanhSo;
  double get hoaHong =>_hoaHong;

  set doanhSo(double doanhSo){
    _doanhSo=(doanhSo>0)?doanhSo:_doanhSo;
  }
set hoaHong(double hoaHong){
    _hoaHong=(hoaHong>0 && hoaHong<=1)?hoaHong:_hoaHong;
  }

  @override
  double tinhluong() {
    // TODO: implement tinhluong
    return luongCoBan+ doanhSo*hoaHong;
  }
  @override
  void hienThiThongTin() {
    // TODO: implement hienThiThongTin
    super.hienThiThongTin();
    print("Doanh số: $_doanhSo");
    print("Hoa hồng: $_hoaHong");
  }
}