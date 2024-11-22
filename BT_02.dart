import 'dart:io';

void main() {
  int n;

  // Nhập một số nguyên dương từ bàn phím
  do {
    stdout.write('Nhập một số nguyên dương (n >= 1): ');
    String? input = stdin.readLineSync();
    n = int.tryParse(input ?? '') ?? 0;
    if (n < 1) {
      print('Vui lòng nhập một số nguyên dương lớn hơn hoặc bằng 1.');
    }
  } while (n < 1);

  // Chuyển đổi số nguyên thành số nhị phân
  String binary = '';
  int temp = n;
  while (temp > 0) {
    binary = (temp % 2).toString() + binary;
    temp ~/= 2; // Lấy phần nguyên của phép chia
  }

  // Hiển thị kết quả
  print('Số nhị phân của $n là: $binary');
}
