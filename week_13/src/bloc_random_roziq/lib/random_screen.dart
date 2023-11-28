import 'package:flutter/material.dart';
import 'package:bloc_random_roziq/random_bloc.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  final _bloc = RandomNumberBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Roziq'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.randomNumber, 
          initialData: 0,
          builder: (context, snapshot) {
            return Text(
              'Random Number : ${snapshot.data.toString()}',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.generateRandom.add(null),
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}