import 'package:flutter/material.dart';
import 'package:hash_demo/home.dart';
import 'package:hash_demo/screen_two.dart';
import './url_strategy_native_config.dart'
if(dart.library.html) './url_strategy_webconfig.dart';

void main() {
  runApp(const MyApp());
  urlConfig();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remove # Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/page2': (context) => const ScreenTwo(),
      },
    );
  }
}
