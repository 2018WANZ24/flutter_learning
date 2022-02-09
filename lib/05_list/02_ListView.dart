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
      body: const ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ListViewBasic(),
          const ListViewHorizontal(),
          ListViewBuilderDemo(),
          ListViewSepratedDemo(),
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          4,
          (index) => ListTile(
            leading: const Icon(Icons.access_alarm, size: 50),
            title: Text('access_alarm$index'),
            subtitle: const Text('SubTitle'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            selected: false,
            selectedTileColor: Colors.red[100],
          ),
        ),
      ),
    );
  }
}

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.blueAccent,
          ),
          Container(
            width: 160,
            color: Colors.black87,
          ),
          Container(
            width: 160,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  ListViewBuilderDemo({Key? key}) : super(key: key);
  final List<Widget> users = List<Widget>.generate(
    20,
    (index) => OutlinedButton(
      onPressed: () {},
      child: Text('User$index'),
    ),
  );
  @override
  Widget build(context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: users.length,
        itemExtent: 30,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return users[index];
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class ListViewSepratedDemo extends StatelessWidget {
  ListViewSepratedDemo({Key? key}) : super(key: key);
  final List<Widget> products = List.generate(
    20,
    (index) => ListTile(
      leading: const Icon(Icons.access_alarm, size: 50),
      title: Text('Title$index'),
      subtitle: const Text('SubTitle'),
      trailing: const Icon(Icons.keyboard_arrow_right),
      selected: false,
      selectedTileColor: Colors.red[100],
    ),
  );

  Widget dividerOdd = const Divider(
    color: Colors.blue,
    thickness: 2,
  );
  Widget dividerEven = const Divider(
    color: Colors.red,
    thickness: 2,
  );

  @override
  Widget build(context) {
    return Column(
      children: [
        const ListTile(
          title: Text('List'),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return products[index];
            },
            separatorBuilder: (context, index) {
              return index % 2 == 0 ? dividerEven : dividerOdd;
            },
          ),
        )
      ],
    );
  }
}
