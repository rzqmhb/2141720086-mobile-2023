void main(){
  //merubah kode :
  for (int i = 18; i > 8; i--) {
    print("Hello ${i + 2}");
  }

  //menjadi :
  final String nama = "Roziq";
  for (int i = 18; i > 8; i--) {
    print("Nama saya adalah $nama, sekarang berumur $i");
  }
}