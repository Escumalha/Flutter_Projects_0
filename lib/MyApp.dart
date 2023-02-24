import 'package:flutter/material.dart';

import 'HomeController.dart';
import 'HomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: HomeController(child: HomePage()),
    ));
  }
}
