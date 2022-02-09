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
      body: const SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          reverse: true,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button1'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button2'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button3'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button4'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button5'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Button6'),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(10),
          reverse: false,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
              100,
              (index) => OutlinedButton(
                onPressed: () {},
                child: Text('Button$index'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
