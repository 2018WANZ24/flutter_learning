import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(30),
          color: Colors.purpleAccent[100],
          elevation: 20,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                color: Colors.yellow,
                width: 5,
              )),
          shadowColor: Colors.yellow,
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  'User1',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                subtitle: Text(
                  'Root',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Tel: 13333333333',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Addr: XXXXXXX',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 50,
                ),
                title: Text(
                  'User2',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                subtitle: Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Tel: 13333333333',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Addr: XXXXXXX',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
