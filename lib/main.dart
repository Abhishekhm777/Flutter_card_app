import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'QuteCard.dart';

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
             children: qoutesList.map((e) => QuoteCard(
                 quote: e,
               delete:(){
                   setState(() {
                     qoutesList.remove(e);
                   });

               }
             )).toList()
    ),
        ),
    );
  }
}



