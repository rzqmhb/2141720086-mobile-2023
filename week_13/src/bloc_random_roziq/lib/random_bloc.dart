import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  RandomNumberBloc(){
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(1000);
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }

  //StreamController for input events
  final _generateRandomController = StreamController<void>();
  //StreamController fof output
  final _randomNumberController = StreamController<int>();
  //input sink
  Sink<void> get generateRandom => _generateRandomController.sink;
  //output stream
  Stream<int> get randomNumber => _randomNumberController.stream;
  // _secondsStreamController.sink;
}