void main(){
  //contoh null safety

  //memakai deklarasi nullable
  String? nama;
  int? usia;
  print("nama: ${nama ?? 'belum diketahui'}, usia: ${usia ?? 'belum diketahui'}");

  //tidak memakai deklarasi nullable
  String alamat;
  print("alamat: ${alamat ?? 'belum diketahui'}, ");

  //contoh late variable
  late int stok_barang;
  if (stok_barang == null) {
    //kode program
  }

  stok_barang = 60;
  if (stok_barang == null) {
    //kode program
  }
}