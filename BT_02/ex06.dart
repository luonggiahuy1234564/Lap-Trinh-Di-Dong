import 'dart:io';

void main() {
  int n = 0;


  stdout.write('Nhập một số nguyên dương: ');
  String? input = stdin.readLineSync();
  if (input != null) {
    n = int.tryParse(input) ?? 0;
  }

  if (n <= 0) {
    print('Vui lòng nhập một số nguyên dương lớn hơn 0.');
    return;
  }


  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }


  print('Tổng các ước số của $n là: $sum');
}
