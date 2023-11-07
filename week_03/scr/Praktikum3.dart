void main(List<String> args) {
  // pada kode asli, terjadi error karena pendeklarasian variable pada dart dibutuhkan tipe data variable secra explisit, dan juga
  // nama variable yang berbeda beda (Index dan index) juga akan menghasilkan error, dan juga pada penggunaan perulangan for, 
  // tidak dilakukan increment pada variable index sehingga perulangan akan memiliki iterasi yang tidak terhingga karena variable 
  // index tidak akan pernah mencapai kondisi yang membatasi perulangan.

  // for (Index = 10; index < 27; index) {
  //   print(Index);
  // }

  // kode yang telah dibenarkan akan melakukan print variable index mulai dari value awal hingga value 26.

  for (int index = 10; index < 27; index++) {
    print(index);
  }
  
  // kode tersebut akan menghasilkan error karena keyword yang digunakan menggunakan huruf kapital sehingga tidak dikenali oleh program 
  // dan juga variable yang digunakan merupakan variable yang berbeda dengan yang telah dideklarasikan sebelumnya.

  // for (int index = 10; index < 27; index++) {
  //   If (Index == 21) break;
  //   Else If (index > 1 || index < 7) continue;
  //   print(index);
  // }

  // penambahan baris kode tersebut digunakan untuk memberikan pemilihan kondisi, apabila index mencapai value 21, maka 
  // program akan menghentikan perulangan, namun apabila index memiliki value lebih dari satu atau kurang dari tujuh, 
  // maka perulangan akan dilanjutkan pada iterasi berikutnya dan mengabaikan kode dibawah pemilihan kondisi else if, yang 
  // berarti bahwa baris kode print(index) tidak akan bisa dijalankan, karena mau berapapun value dari index akan memnuhi kondisi 
  // dari else if, sehingga baris kode print(index) akan tetap dilewati

  for (int index = 10; index < 27; index++) {
    if (index == 21) break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }

  // kode dengan kondisi yang telah diubah

  for (int index = 10; index < 27; index++) {
    if (index == 21) break;
    else if (index > 13 && index < 17) continue;
    print(index);
  }
}
