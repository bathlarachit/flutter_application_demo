import 'package:flutter/material.dart';
import 'package:flutter_application_demo/tiles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  //const Home({Key? key}) : super(key: key);

  //const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppHeader(),
                const Divider(),
                const SizedBox(height: 10),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(77, 107, 249, 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Balance",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$450,452",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Monthly Profit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$12,240",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Trending Coins ",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Tiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Rachit Bathla",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const Image(
          height: 50,
          image: AssetImage("assets/man.png"),
        ),
      ],
    );
  }
}
