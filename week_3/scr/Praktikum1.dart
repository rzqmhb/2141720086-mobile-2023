void main() {
  // kode asli terjadi error karena pada keyword if dan else pada baris 7 dan 9 menggunakan huruf kapital yang akan menghasilkan error
  // karena dart merupakan bahasa pemrograman yang case sensitive sehingga perbedaan kapital berkemungkinan menghasilkan error.

  // String test = "test2";
  // if (test == "test1") {
  //   print("Test1");
  // } else If (test == "test2") {
  //   print("Test2");
  // } Else {
  //   print("Something else");
  // }

  // if (test == "test2") print("Test2 again");

  // jika error diperbaiki, maka baris kode akan menghasilkan print "Test2"

  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  // kode asli menghasilkan error karena variable yang digunakan pada pengkondisian if bertipe string sehingga menghasilkan error,
  // dan juga dilakukan deklarasi variable baru menggunakan nama variable yang telah ada, sehingga menghasilkan error juga.

  // String test = "true";
  // if (test) {
  //   print("Kebenaran");
  // }

  // jika error diperbaiki, maka kode akan menghasilkan print berupa string "Kebenaran".

  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }
}
