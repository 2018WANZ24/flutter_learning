import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hello Flutter',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
          text: const TextSpan(
              text: "Hello",
              style: TextStyle(fontSize: 40, color: Colors.red),
              children: [
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
                TextSpan(
                    text: "Hello World",
                    style: TextStyle(fontSize: 40, color: Color(0xFFBD93F9)))
              ]),
        )
      ],
    );
  }
}
