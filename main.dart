void main() {
  const double phi = 3.14;         
  final String namaApp = "Calc v1.0"; 
  
  var deretAngka = [10, 20, 5, 0]; 

  print("Menjalankan $namaApp...");

  for (int angka in deretAngka) {
    double hasil = hitungPembagian(angka1: 100, pembagi: angka);
    tampilkanHasil(angka, hasil);
  }
}

double hitungPembagian({required double angka1, required int pembagi}) {
  // Kasus pembagi = 0 → error
  if (pembagi == 0) {
    return -1;
  }

  // Kasus pembagi tidak masuk akal (negatif atau lebih besar dari angka1)
  else if (pembagi < 0 || pembagi > angka1) {
    return 0;
  }

  // Pembagian normal
  else {
    return angka1 / pembagi;
  }
}

void tampilkanHasil(int pembagi, double hasil) {
  if (hasil == -1) {
    print("100 dibagi $pembagi = ERROR (Tidak bisa bagi nol!)");
  } else {
    print("100 dibagi $pembagi = ${hasil.toStringAsFixed(2)}");
  }
}
