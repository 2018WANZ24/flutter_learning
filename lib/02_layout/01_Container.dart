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
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Hello",
        style: TextStyle(fontSize: 20),
      ),
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 5.0),
      alignment: Alignment.center,
      transform: Matrix4.translationValues(100, 0, 0),
      //transform: Matrix4.rotationZ(-0.1),
      //transform: Matrix4.skewX(0.2),
      decoration: BoxDecoration(
        //border: Border(
        //top: BorderSide(
        //width: 10.0,
        //color: Colors.red,
        //),
        //bottom: BorderSide(
        //width: 10.0,
        //color: Colors.red,
        //),
        //left: BorderSide(
        //width: 10.0,
        //color: Colors.red,
        //),
        //right: BorderSide(
        //width: 10.0,
        //color: Colors.red,
        //),
        //),
        border: Border.all(
          width: 10.0,
          color: Colors.blue,
        ),
        //borderRadius: BorderRadius.all(Radius.circular(30)),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
        color: Colors.lightGreen[100],
        gradient: const LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.white12,
          ],
        ),
      ),
    );
  }
}
