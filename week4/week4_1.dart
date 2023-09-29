import 'dart:io';

int main() {
  int oilThatShouldBuy;
  int egg;

  print('Apakah ada telur? (yes/no): ');
  String input = stdin.readLineSync()!;
  bool adaTelur = (input.toLowerCase() == 'yes');

  if (adaTelur) {
    oilThatShouldBuy = 6;
    egg = 0;
  } else {
    oilThatShouldBuy = 1;
    egg = 0;
  }
  print('Jumlah minyak goreng yang diambil: $oilThatShouldBuy botol');
  print('Jumlah telur yang diambil: $egg butir');

  return oilThatShouldBuy;
}
