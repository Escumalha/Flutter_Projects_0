import 'package:flutter/material.dart';

import 'HomeController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Melhor oficina do IGUATU"),
      ),
      body: Center(
        child: Text('MultMotos ${controller.value}'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            controller.increment();
          }),
    );
  }
}
