import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Column(
      children: [
        Image.asset(
          'images/1.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
