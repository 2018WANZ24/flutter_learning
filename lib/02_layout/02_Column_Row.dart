import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column_Row"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.access_alarms, size: 50),
          const Icon(Icons.access_alarms, size: 50),
          const Icon(Icons.access_alarms, size: 50),
          const Icon(Icons.access_alarms, size: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.access_alarms, size: 50),
              Icon(Icons.access_alarms, size: 50),
              Icon(Icons.access_alarms, size: 50),
              Icon(Icons.access_alarms, size: 50),
            ],
          )
        ],
      ),
    );
  }
}
