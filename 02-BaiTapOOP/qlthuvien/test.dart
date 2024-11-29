import 'thuvien.dart';
void main() {
  // Tạo đối tượng sách
  Sach sach = Sach('S001', 'Lập trình Dart', 'Nguyễn Văn A', false);

  // Hiển thị thông tin sách ban đầu
  sach.hienThiThongTin();

  // Thay đổi thông tin sách
  sach.tenSach = 'Lập trình Flutter';
  sach.tacGia = 'Nguyễn Văn B';
  sach.trangThaiMuon = true;

  // Hiển thị thông tin sách sau khi thay đổi
  print('\nSau khi cập nhật:');
  sach.hienThiThongTin();

  // Test với giá trị không hợp lệ
  print('\nTest giá trị không hợp lệ:');
  sach.maSach = '';
  sach.tenSach = '';
  sach.tacGia = '';
}