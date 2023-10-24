import 'package:flutter/material.dart';

class Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      color: const Color.fromARGB(255, 202, 202, 202),
      child: Center(
        child: Text(
          'Roziq Mahbubi      2141720086',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}