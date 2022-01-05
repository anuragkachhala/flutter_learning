import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCardWidget.dart';

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
  List<Quote> quotes = [
    Quote('first quote ', 'first author'),
    Quote('third quote ', 'thired author'),
    Quote('second quote ', 'second author'),
  ];

  Widget quoteWidget(quote) {
    return QuoteCardWidget(quote);
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => quoteWidget(quote)).toList(),
      ),
    );
  }
}


