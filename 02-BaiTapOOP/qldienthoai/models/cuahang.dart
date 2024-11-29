import 'dienthoai.dart';
import 'hoadon.dart';
class CuaHang {
  
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];


  CuaHang(this._tenCuaHang, this._diaChi);


  void themDienThoai(DienThoai dienThoai) {
    _danhSachDienThoai.add(dienThoai);
    print('Đã thêm điện thoại: ${dienThoai.tenDienThoai}');
  }

  void capNhatThongTinDienThoai(String ma, DienThoai thongTinMoi) {
    var dt = _danhSachDienThoai.firstWhere((d) => d.maDienThoai == ma, );
    if (dt != null) {
      dt.tenDienThoai = thongTinMoi.tenDienThoai;
      dt.hangSanXuat = thongTinMoi.hangSanXuat;
      dt.giaNhap = thongTinMoi.giaNhap;
      dt.giaBan = thongTinMoi.giaBan;
      dt.soLuongTonKho = thongTinMoi.soLuongTonKho;
      dt.trangThai = thongTinMoi.trangThai;
      print('Đã cập nhật thông tin điện thoại: ${dt.tenDienThoai}');
    } else {
      print('Không tìm thấy điện thoại để cập nhật.');
    }
  }

  void ngungKinhDoanhDienThoai(String ma) {
    var dt = _danhSachDienThoai.firstWhere((d) => d.maDienThoai == ma, );
    if (dt != null) {
      dt.trangThai = false;
      print('Đã ngừng kinh doanh điện thoại: ${dt.tenDienThoai}');
    } else {
      print('Không tìm thấy điện thoại để ngừng kinh doanh.');
    }
  }

  void hienThiDanhSachDienThoai() {
    print('Danh sách điện thoại:');
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }


  void taoHoaDon(HoaDon hoaDon) {
    if (hoaDon.soLuongMua <= hoaDon.dienThoaiDuocBan.soLuongTonKho) {
      hoaDon.dienThoaiDuocBan.soLuongTonKho -= hoaDon.soLuongMua;
      _danhSachHoaDon.add(hoaDon);
      print('Đã tạo hóa đơn: ${hoaDon.maHoaDon}');
    } else {
      print('Số lượng mua vượt quá tồn kho!');
    }
  }

  void hienThiDanhSachHoaDon() {
    print('Danh sách hóa đơn:');
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTin();
    }
  }


  double tinhTongDoanhThu(DateTime tuNgay, DateTime denNgay) {
    double tongDoanhThu = 0;
    for (var hd in _danhSachHoaDon) {
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongDoanhThu += hd.tinhTongTien();
      }
    }
    return tongDoanhThu;
  }

  double tinhTongLoiNhuan(DateTime tuNgay, DateTime denNgay) {
    double tongLoiNhuan = 0;
    for (var hd in _danhSachHoaDon) {
      if (hd.ngayBan.isAfter(tuNgay) && hd.ngayBan.isBefore(denNgay)) {
        tongLoiNhuan += hd.tinhLoiNhuanThucTe();
      }
    }
    return tongLoiNhuan;
  }
}
