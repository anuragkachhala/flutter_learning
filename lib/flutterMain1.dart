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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('row'),
          Container(
            color: Colors.grey,
            child: Text('its container'),
          ),
          Container(
            color: Colors.blue,
            child: Text('Blue Text'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: const Text('Click')
      ),
    );
  }

}