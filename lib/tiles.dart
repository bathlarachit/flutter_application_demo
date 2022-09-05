import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'constants.dart';

class Tiles extends StatefulWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  final _price = <double>[0, 0, 0];
  final twoSec = const Duration(seconds: 2);

  void load() async {
    final response = await http.get(Uri.parse(url));
    final body = jsonDecode(response.body);

    if (response.statusCode == 200) {
      int i = 0;
      for (var u in body) {
        _price[i++] = double.parse(double.parse(u["price"]).toStringAsFixed(2));
      }
    } else {
      print("Error as occured");
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState

    load();
    Timer.periodic(twoSec, (timer) => load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TilesListCard(
            name: "Bitcoin",
            img: "assets/btc-logo.png",
            price: _price[0],
            sname: "BTC"),
        TilesListCard(
            name: "Etherium",
            img: "assets/eth-logo.png",
            price: _price[1],
            sname: "ETH"),
        TilesListCard(
            name: "XRP",
            img: "assets/xrp-logo.png",
            price: _price[2],
            sname: "XRP"),
      ],
    );
  }
}

class TilesListCard extends StatelessWidget {
  final String name;
  final String sname;
  final String img;
  final double price;
  const TilesListCard({
    Key? key,
    required this.name,
    required this.sname,
    required this.img,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0.8,
      child: ListTile(
        title: Text(name),
        leading: Image(
          image: AssetImage(img),
          height: tileSize,
          width: tileSize,
        ),
        subtitle: Text(sname),
        trailing: Text("\$$price"),
      ),
    );
  }
}
