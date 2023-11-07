void main(List<String> args) {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);

  gifts['nama'] = "Roziq Mahbubi";
  gifts['nim'] = 2141720086;
  mhs1['nama'] = "Roziq Mahbubi";
  mhs1['nim'] = "2141720086";
  
  nobleGases[0] = "Roziq Mahbubi";
  nobleGases[1] = 2141720086;
  mhs2[0] = "Roziq Mahbubi";
  mhs2[1] = "2141720086";

  print("gifts : $gifts");
  print("mhs1 : $mhs1");
  print("nobleGases : $nobleGases");
  print("mhs2 : $mhs2");
}
