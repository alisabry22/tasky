import 'package:flutter/material.dart';

class FirstNavScreen extends StatelessWidget {
  const FirstNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Catalogs"),
      ),
    );
  }
}