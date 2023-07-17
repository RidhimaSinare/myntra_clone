import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/insider_page.dart';
import 'package:myntra_clone/store_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => Store_Page(),
        'insider':(context) => Insider_Page()
      },
    );
  }
}
