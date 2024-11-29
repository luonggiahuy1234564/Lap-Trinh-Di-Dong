import '../models/cuahang.dart';
import '../models/dienthoai.dart';
import '../models/hoadon.dart';

void main() {
  
  CuaHang cuaHang = CuaHang('Cửa Hàng A', '123 Đường ABC');

  
  DienThoai dt1 = DienThoai('DT-001', 'iPhone 15', 'Apple', 1000.0, 1200.0, 50, true);
  DienThoai dt2 = DienThoai('DT-002', 'Galaxy S23', 'Samsung', 900.0, 1100.0, 30, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);


  cuaHang.hienThiDanhSachDienThoai();

  DienThoai dtMoi = DienThoai('DT-001', 'iPhone 15 Pro', 'Apple', 1100.0, 1300.0, 40, true);
  cuaHang.capNhatThongTinDienThoai('DT-001', dtMoi);

  
  cuaHang.ngungKinhDoanhDienThoai('DT-002');

  HoaDon hoaDon1 = HoaDon('HD-001', DateTime.now(), dt1, 5, 1250.0, 'Nguyễn Văn A', '0123456789');
  cuaHang.taoHoaDon(hoaDon1);

  
  cuaHang.hienThiDanhSachHoaDon();


  DateTime tuNgay = DateTime.now().subtract(Duration(days: 30));
  DateTime denNgay = DateTime.now();
  print('Tổng doanh thu: ${cuaHang.tinhTongDoanhThu(tuNgay, denNgay)}');
  print('Tổng lợi nhuận: ${cuaHang.tinhTongLoiNhuan(tuNgay, denNgay)}');
}

