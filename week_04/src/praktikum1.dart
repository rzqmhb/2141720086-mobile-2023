void main(List<String> args) {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);

  final List<dynamic> list2 = List<dynamic>.filled(5, null);
  list2[0] = 2141720086;
  list2[1] = "Roziq Mahbubi";
  print(list2);
}
