import 'package:flutter/material.dart';

import 'package:flutter_flux/flutter_flux.dart';

import 'package:sinau_flux/store.dart';

import 'coin_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with StoreWatcherMixin<Home> {
  CoinStore store;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    store = listenToStore(coinStoreToken);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flux Sinau.'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.refresh),
            onPressed: () {
              loadCoinsAction.call();
            },
          )
        ],
      ),
      body: new ListView(
        children: store.coins.map((coin) => new CoinWidget(coin)).toList(),
      ),
    );
  }
}
