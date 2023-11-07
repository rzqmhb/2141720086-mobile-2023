void main(List<String> args) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("2141720086");
  names1.add("Roziq Mahbubi");

  names2.addAll(names1);

  print(names1);
  print(names2);
}
