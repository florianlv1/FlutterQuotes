import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),

  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(text: "you are stupid", author: "Elon Musk"),
    Quote(text: "You are broke", author: "Mr. beast"),
    Quote(text: "Your parents found you in a trash can", author: "Oscar Wilde"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes.map((quote) => QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
          )).toList(),
      )
    );
  }
}





