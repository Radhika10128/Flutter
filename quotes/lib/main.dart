import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
)); //MaterialApp

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => new _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
   Quote(author: 'Buddha', text: 'what we think, we become'),
   Quote(author: 'Henry David Thoreau', text: 'Live your beliefs and you can turn the world around'),
   Quote(author: 'John Muir', text: 'The power of imagination makes us infinite'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ), //AppBar
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
               quotes.remove(quote);
              });
            }
        )).toList(),
      ), //Column
    ); //Scaffold
  }
}



