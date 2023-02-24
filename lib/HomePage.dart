import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Melhor oficina do IGUATU"),
      ),
      body: Center(
        child: Text("MultMotos"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Apertou");
      }),
    );
  }
}
