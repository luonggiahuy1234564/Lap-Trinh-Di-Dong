import '../models/nhanvien.dart';
import '../models/nhanvienbanhang.dart';

void main(){
  Nhanvien nv =Nhanvien('NV001', 'Lương Gia Huy', 2000000000);
  print('Thông tin nhân viên thưởng');
  nv.hienThiThongTin();
  Nhanvienbanhang nv_BH =Nhanvienbanhang('NV002', "afsdfsdfsf", 50000000, 10000000000, 0.02);
  print('\nThong tin nhân viên bán hàng');
  nv_BH.hienThiThongTin();
  nv_BH.doanhSo=-10000000;
  print('\nSau khi tăng doanh số:');
  nv_BH.hienThiThongTin();
}