import 'package:flutter/material.dart';
import 'Quotes.dart';


class QuoteCard extends StatelessWidget {
  final QuotesClass quote;
  final Function delete;
  QuoteCard( {this.quote,this.delete,});
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
            SizedBox(height: 13.0,),
            FlatButton.icon(onPressed: delete,
                icon:Icon(Icons.delete,),
                label:Text( 'Delete'),),
          ],
        ),
      ),
    );
  }
}