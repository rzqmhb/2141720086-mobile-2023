import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond ({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build (BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Roziq Mahbubi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Color.fromARGB(137, 180, 0, 0);             
                Navigator.pop(context, color);
              }, 
              child: const Text("Maroon"),
            ),
            ElevatedButton(
              onPressed: () {
                color = Color.fromARGB(255, 249, 241, 6);
                Navigator.pop(context, color);
              }, 
              child: const Text("Kuning"),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 25, 210, 198);
                Navigator.pop(context, color);
              }, 
              child: const Text("Aquamarine"),
            ),
          ],
        ),
      ),
    );
  }
}