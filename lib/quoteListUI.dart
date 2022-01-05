import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteListApp(),
  ));
}

class QuoteListApp extends StatefulWidget {
  const QuoteListApp({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteListApp> {
  List quots = ['first quotes', 'first quotes', 'first quotes'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: quots.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
