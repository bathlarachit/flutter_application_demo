import 'package:flutter/material.dart';
import 'package:flutter_application_demo/splash.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => const Splash(),
      "/home": (context) => const Home(),
    },
  ));
}
