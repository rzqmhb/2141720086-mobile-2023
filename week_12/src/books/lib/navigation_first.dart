import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Color.fromARGB(255, 37, 177, 224);

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text("Navigation First Screen Roziq Mahbubi"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateAndgetColor(context);
          }, 
          child: Text("Change Color"),
          ),
      ),
    );
  }
}