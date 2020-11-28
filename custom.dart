import 'package:flutter/material.dart';
import 'package:myprojet1/quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'wiz khalifa', text: 'hellll hehiehfiehi highwo howw'),
    Quote(author: 'wiz khalifa', text: 'hellll hehiehfiehi highwo howw'),
    Quote(author: 'wiz khalifa', text: 'hellll hehiehfiehi highwo howw'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('helo this is first'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes
            .map((quote) => Text('${quote.text} -${quote.author}'))
            .toList(),
      ),
    );
  }
}
class Quote {
  String text;

  String author;

  Quote({this.text, this.author});
}
