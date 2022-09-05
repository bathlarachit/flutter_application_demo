import 'package:flutter/material.dart';
import 'package:flutter_application_demo/constants.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 160.0),
            child: Image(
              height: 250,
              image: AssetImage("assets/logo.png"),
            ),
          ),
          const Text(
            "CrypScanner",
            style: TextStyle(fontFamily: 'Permanent Marker', fontSize: 25),
          ),
          const SizedBox(
            height: 160,
          ),
          ElevatedButton(
            onPressed: () => {Navigator.popAndPushNamed(context, '/home')},
            style: ElevatedButton.styleFrom(
              primary: BlueColor,
              fixedSize: const Size(290, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            child: const Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
