import 'dart:async';
import 'dart:math';
import 'package:books/geolocation.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart";
import "package:http/http.dart" as http;
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo Roziq Mahbubi ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LocationScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  late Completer completer;

  Future handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      debugPrint('complete');
    }
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  void returnFG() {
    //praktikum 4 soal 8
    final futureGroup = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    futureGroup.then((value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });

    //praktikum 4 soal 7
    // FutureGroup<int> futureGroup = FutureGroup<int>();
    // futureGroup.add(returnOneAsync());
    // futureGroup.add(returnTwoAsync());
    // futureGroup.add(returnThreeAsync());
    // futureGroup.close();
    // futureGroup.future.then((value) {
    //   int total = 0;
    //   for (var element in value) {
    //     total += element;
    //   }
    //   setState(() {
    //     result = total.toString();
    //   });
    // });
  }

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  //praktikum 3 soal 6
  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds : 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  // praktikum 3 soal 5
  // Future calculate() async {
  //   await Future.delayed(const Duration(seconds : 5));
  //   completer.complete(42);
  // }

  Future<Response> getData() async {
    const authority = "www.googleapis.com";
    const path = "/books/v1/volumes/DJV0AAAACAAJ";
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  } 

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future Roziq Mahbubi'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                //praktikum 5 soal 10
                handleError();

                //praktikum 5 soal 9
                // returnError().then((value) {
                //   setState(() {
                //     result = "Success";
                //   });
                // }).catchError((onError){
                //   setState(() {
                //     result = onError.toString();
                //   });
                // }).whenComplete(() => print('Complete'));

                //praktikum 4
                // returnFG();

                //praktikum 3 soal 6
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // }).catchError((e) {
                //   result = 'An error occurred';
                // });

                //praktikum 3 soal 5
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // });
                
                //praktikum 2
                // count();
                
                //praktikum 1
                // setState(() {});
                // getData().
                // then((value) {
                //   result = value.body.toString().substring(0, 450);
                //   setState(() {});
                // }).catchError((_){
                //   result = "an error occured";
                //   setState(() {});
                // });
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
