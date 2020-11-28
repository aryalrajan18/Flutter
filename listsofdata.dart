import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'be yourself',
    'hey k xa',
    'thikthak xa',
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
        children: quotes.map((quote) {
          return Text(quote);
        }).toList(),
      ),
    );
  }
}
