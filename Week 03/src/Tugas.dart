void main(){
    String nama = "Amalia Salsa Lutfiana";
    String nim = "2141720228";

for (int number = 0; number <= 201; number++ ) {
    if (isPrima(number)) {
        print("Bilangan prima: $number");
        print("Nama Lengkap: $nama");
        print("NIM: $nim");
    }
}
}
bool isPrima(int angka){
    if (angka <= 1) return false;
    if (angka<= 3) return true;

    if (angka % 2 == 0 || angka % 3 == 0) return false;

    int i = 5;
    while (i * i <= angka) {
    if (angka % i == 0 || angka % (i + 2) == 0) return false;
    i += 6;
  }
    return true;
}