import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Stream Roziq',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer transformer;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String values = '';

  void changeColor () async {
    //praktikum 1 soal 5
    colorStream.getColor().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });

    //praktikum 1 soal 4
    // await for (var eventColor in colorStream.getColor()){
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // };
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    // numberStream.addNumberToSink(myNum);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }

    //praktikum 2 soal 7
    // numberStream.addError();
  }

  void stopStream() {
    numberStreamController.close();
  }

  @override
  void initState() {
    super.initState();
    //praktikum 2
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();
    // Stream stream = numberStreamController.stream;
    // stream.listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
    
    //praktikum 5 soal 10
    subscription = stream.listen((event) { 
      setState(() {
        values += '$event - ';
      });
    });

    subscription2 = stream.listen((event) { 
      setState(() {
        values += '$event - ';
      });
    });
    
    //praktikum 4
    // subscription = stream.listen((event) { 
    //   setState(() {
    //     lastNumber = event;
    //   });
    // });
    // subscription.onError((error) {
    //   setState(() {
    //     lastNumber = -1; 
    //   });
    // });
    // subscription.onDone(() {
    //   debugPrint('onDone was called');
    // });

    // praktikum 3
    // transformer = StreamTransformer<int, int>.fromHandlers(
    //   handleData: (value, sink) {
    //     sink.add(value * 10);
    //   },
    //   handleError: (error, trace, sink) {
    //     sink.add(-1);
    //   },
    //   handleDone: (sink) => sink.close(),
    // );
    // stream.transform(transformer).listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    //praktikum 1
    // colorStream = ColorStream();
    // changeColor();
  } 

  @override
  void dispose() {
    super.dispose();
    numberStreamController.close();
    subscription.cancel();
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Roziq'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(lastNumber.toString()),
            //praktikum 5 soal 15
            Text(values),
            ElevatedButton(
              onPressed: () {
                addRandomNumber();
              }, 
              child: Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () {
                stopStream();
              }, 
              child: const Text('Stop Subscription')
            ),
          ],
        ),
      ),

      // praktikum 1
      // body: Container(
      //   decoration: BoxDecoration(color: bgColor),
      // ),
    );
  }
}