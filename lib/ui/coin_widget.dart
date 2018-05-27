import 'package:flutter/material.dart';
import 'package:sinau_flux/store.dart';

class CoinWidget extends StatelessWidget {

  final Coin coin;

  CoinWidget(this.coin);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      decoration: new BoxDecoration(
        border: new Border.all(width: 10.0),
      ),
      child: new Card(
        elevation: 10.0,
        color: Colors.blueAccent,
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new ListTile(
                title: new Text(coin.name),
                leading: new CircleAvatar(
                  child: new Text(
                    coin.symbol,
                    style: new TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.amber,
                ),
                subtitle: new Text("\$ ${coin.price.toStringAsFixed(2)}"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
