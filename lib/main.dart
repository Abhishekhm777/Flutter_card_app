import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quotes.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}





class _QuotesState extends State<Quotes> {
  List<QuotesClass> qoutesList=[QuotesClass(quote:'hdddddddi',aouthor:'Abhi'),
  QuotesClass(quote:'Hellddddddddddddddddo',aouthor:'Avhishek')];


  Widget getCardWidget( quote){
    return QuoteCard(quote: quote);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,

      ),
        body: Center(
          child: Column(
             children: qoutesList.map((e) => getCardWidget(e)).toList()
    ),
        ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final QuotesClass quote;
  QuoteCard( {this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.quote,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 15.0,),
            Text(
              quote.aouthor,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

