import 'dart:io';

void main() {
  stdout.write('Masukkan nama kamu : ');
  String inputNama1 = stdin.readLineSync() ?? '';

  stdout.write('Masukkan umur kamu : ');
  int inputUmur1 = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan nama teman kamu : ');
  String inputNama2 = stdin.readLineSync() ?? '';

  stdout.write('Masukkan umur teman kamu: ');
  int inputUmur2 = int.parse(stdin.readLineSync()!);

  String hasilNama = '$inputNama1 $inputNama2';
  int hasilUmur = inputUmur1 + inputUmur2;

  print('Hasil gabungan nama : $hasilNama');
  print('Hasil gabungan umur : $hasilUmur');
}
