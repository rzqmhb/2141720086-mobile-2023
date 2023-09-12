void main(List<String> args) {
  for (var bilangan = 0; bilangan <= 201; bilangan++) {
    if(bilangan == 0) continue;
    else if(bilangan == 1) continue;
    else if((bilangan % 2 == 0) && (bilangan != 2)) continue;
    else if((bilangan % 3 == 0) && (bilangan != 3)) continue;
    else if((bilangan % 5 == 0) && (bilangan != 5)) continue;
    else if((bilangan % 7 == 0) && (bilangan != 7)) continue;
    else if((bilangan % 11 == 0) && (bilangan != 11)) continue;
    else if((bilangan % 13 == 0) && (bilangan != 13)) continue;

    print("$bilangan : Roziq Mahbubi (2141720086)");
  }
}