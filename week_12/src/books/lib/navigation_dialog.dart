import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  _showColorDialog (BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (_) {
        return AlertDialog(
          title: const Text("Very Important Question"),
          content: const Text("Please choose a color"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  color = Color.fromARGB(137, 180, 0, 0);  
                });
                Navigator.pop(context);
              }, 
              child: const Text("Maroon"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  color = Color.fromARGB(255, 249, 241, 6);
                });
                Navigator.pop(context);
              }, 
              child: const Text("Kuning"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  color = const Color.fromARGB(255, 25, 210, 198);
                });
                Navigator.pop(context);
              }, 
              child: const Text("Aquamarine"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Dialog Screen Roziq Mahbubi"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          }, 
          child: const Text("Change Color"),
        )
      ),
    );
  }
}