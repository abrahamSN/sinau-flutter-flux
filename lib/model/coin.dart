class Coin {
  final String id;
  final String name;
  final String symbol;
  final double price;

  Coin({this.id, this.name, this.symbol, this.price});

  Coin.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        symbol = json['symbol'],
        price = double.parse(json['price_usd']);
}
