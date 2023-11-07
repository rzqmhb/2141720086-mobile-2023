void main() {

  // kode asli menghasilkan error karena variable yang dijadikan pengkondisian while belum dideklarasi dan diinisialisasi, sehingga 
  // menghasilkan error

  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  // apabila error diperbaiki, maka program akan melakukan print untuk nilai awal variable counter, hingga counter bernilai 32, 
  // karena terdapat pengkondisian counter < 33

  int counter = 0;

  while (counter < 33) {
    print(counter);
    counter++;
  }

  // kode asli tidak menghasilkan error karena variable counter sudah dideklarasikan dan memiliki sebuah value, 
  // yang dilakukan oleh baris kode ini adalah melakukan print untuk nilai counter saat ini lalu melakukan increment 
  // pada counter dan melakukan pengecekan kondisi dengan kondisi counter < 77. 

  do {
  print(counter);
  counter++;
  } while (counter < 77);
}
