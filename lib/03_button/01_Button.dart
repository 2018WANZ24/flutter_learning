import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () {
              print('TextButton pressed');
            },
            onLongPress: () {
              print('TextButton longPressed');
            },
            child: const Text('TextButton'),
          ),
          ElevatedButton(
            onPressed: () {
              print('ElevatedButton pressed');
            },
            onLongPress: () {
              print('ElevatedButton longPressed');
            },
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton pressed');
            },
            onLongPress: () {
              print('OutlinedButton longPressed');
            },
            child: const Text('OutlinedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton2 pressed');
            },
            onLongPress: () {
              print('OutlinedButton2 longPressed');
            },
            child: const Text('OutlinedButton2'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 30,
                ),
              ),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                return Colors.blue;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.yellow;
                }
                return Colors.white;
              }),
              elevation: MaterialStateProperty.all(20),
              shadowColor: MaterialStateProperty.all(Colors.yellow),
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              shape: MaterialStateProperty.all(
                const StadiumBorder(
                  side: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
              ),
              minimumSize: MaterialStateProperty.all(const Size(150, 60)),
              overlayColor: MaterialStateProperty.all(Colors.purple),
            ),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red),
              ),
            ),
            child: OutlinedButton(
              onPressed: () {
                print('OutlinedButton pressed');
              },
              onLongPress: () {
                print('OutlinedButton longPressed');
              },
              child: const Text('OutlinedButton'),
            ),
          ),
          IconButton(
            onPressed: () {
              print('IconButton pressed');
            },
            icon: const Icon(Icons.add_alarm),
            color: Colors.red,
            splashColor: Colors.lightBlue,
            highlightColor: Colors.purple,
            tooltip: 'Add alarm',
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
            label: const Text('Button'),
          ),
          Container(
            color: Colors.pink,
            width: double.infinity,
            child: ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button2'),
                ),
              ],
            ),
          ),
          const BackButton(),
          const CloseButton(),
        ],
      ),
    );
  }
}
