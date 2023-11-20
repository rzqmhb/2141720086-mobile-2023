import 'package:books/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Color.fromARGB(255, 37, 177, 224);

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NavigationSecond()),) ?? Colors.blue;
    setState(() {});
    }

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
            _navigateAndGetColor(context);
          }, 
          child: Text("Change Color"),
          ),
      ),
    );
  }
}