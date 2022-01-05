import 'package:flutter/material.dart';

void main() =>
    runApp(const MaterialApp(
        home: Home()
    ));


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter App'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Image(
            image: AssetImage('assets/image1.png')),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Text('Click')
      ),
    );
  }

}