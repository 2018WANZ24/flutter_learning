import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  WrapDemo({Key? key}) : super(key: key);

  final List<String> _list = ['P11', 'P12', 'P13', 'P14', 'P15', 'P16'];

  // ignore: non_constant_identifier_names
  List<Widget> _C2() {
    return _list
        .map((item) => Chip(
              avatar: const CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text('C2'),
              ),
              label: Text(item),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
          children: _C2(),
          spacing: 18.0,
          alignment: WrapAlignment.spaceAround,
          runSpacing: 10.0,
          //runAlignment: WrapAlignment.spaceAround,
        ),
        Wrap(
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P1'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P2'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P3'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P4'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P5'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C1'),
              ),
              label: Text('P6'),
            ),
          ],
        )
      ],
    );
  }
}
