import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';

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
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quote,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
            )
          ],
        ),
      ),
    );
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
