void main() {
  const double phi = 3.14;         
  final String namaApp = "Kalkulator Sederhana"; 
  
  var deretAngka = [10, 20, 5, 0]; 

  print("Menjalankan $namaApp...");

  for (int angka in deretAngka) {
    double hasil = hitungPembagian(angka1: 100, pembagi: angka);
    tampilkanHasil(angka, hasil);
  }
}

double hitungPembagian({required double angka1, required int pembagi}) {

  if (pembagi == 0) {
    return -1;
  }


  else if (pembagi < 0 || pembagi > angka1) {
    return 0;
  }

 
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


