import '../models/lophoc.dart';
import '../models/sinhvien.dart';
void main(){
  var sv = SinhVien("Nguyen Van A", 20, 'SV001', 8.5);
  print(sv.hoTen);
  sv.hienThiThongTin();
  sv.hoTen = 'Nguyen Van B';
  print("------");
  sv.hienThiThongTin();
  sv.hoTen = '';
  print("------");
  sv.hienThiThongTin();
  print("------");
  // Test phuong thuc xep loai
  // .... 
  print(sv.xepLoai());
//.....................
  var lopHoc = Lophoc("21DTHF1");
  lopHoc.themSinhVien(SinhVien("Nguyen Van A", 20, 'SV001', 8.5));
  lopHoc.themSinhVien(SinhVien('Nguyen Van B', 21, 'SV002', 6.5));
  lopHoc.themSinhVien(SinhVien('Nguyen Van C', 22, 'SV003', 5.5));
  lopHoc.themSinhVien(SinhVien('Nguyen Van F', 23, 'SV004', 4));
  lopHoc.hienThiDanhSach();
}