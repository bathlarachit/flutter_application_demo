import 'package:flutter/material.dart';

import 'constants.dart';

class Tiles extends StatefulWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TilesListCard(
            name: "Bitcoin",
            img: "assets/btc-logo.png",
            price: 1200,
            sname: "BTC"),
        TilesListCard(
            name: "Etherium",
            img: "assets/eth-logo.png",
            price: 1200,
            sname: "ETH"),
        TilesListCard(
            name: "XRP", img: "assets/xrp-logo.png", price: 1200, sname: "XRP"),
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
