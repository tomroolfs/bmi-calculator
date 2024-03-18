import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter app',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 36, 36, 36),
          foregroundColor: Colors.white,
          title: const Text(
            'BMI Calculator',
          ),
        ),
        body: const Center(
          child: Text('Body text.'),
        ));
  }
}