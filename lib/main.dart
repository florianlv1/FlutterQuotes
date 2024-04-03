import 'package:flutter/material.dart';
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
  
  Widget quotesTemplate(quote) {
    return  Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 6.0),

          ],
        ),
      ) ,
    );
  }

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
          children: quotes.map((quote) => quotesTemplate(quote)).toList(),
      )
    );
  }
}



