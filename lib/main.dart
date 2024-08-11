import 'package:flutter/material.dart';

import 'src/config/theme.dart';
import 'src/screens/splash_screen.dart';
import 'src/utils/util.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // I am Using with Google Fonts package to use downloadable fonts, this are gotten after analyzing Shopliax.com
    // As this are the Fonts used on the website
    TextTheme textTheme = createTextTheme(context, "Open Sans", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const SplashScreen(),
    );
  }
}