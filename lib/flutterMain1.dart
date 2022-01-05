import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
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
      body:  Center(
        /*child: Icon(
          Icons.airport_shuttle,
          color: Colors.blue,
          size: 50.0,
        ),*/
        child: IconButton(
          icon: const Icon(Icons.alternate_email),
          color: Colors.amber,
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Text('Click')
      ),
    );
  }

}