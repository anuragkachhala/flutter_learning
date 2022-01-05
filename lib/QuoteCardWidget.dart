import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Quote.dart';
class QuoteCardWidget extends StatelessWidget {
  final Quote quote;

  QuoteCardWidget(this.quote);

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(
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
}
