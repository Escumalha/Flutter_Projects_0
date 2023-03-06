import 'package:flutter/material.dart';
import 'FuncAux.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropDownValue = "Ordenar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Cariri Delivery",
              style: TextStyle(
                color: Color.fromRGBO(5, 31, 50, 1),
                fontFamily: 'Inter',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(255, 227, 125, 1),
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(20),
              child: TextField(
                  maxLines: null,
                  minLines: null,
                  expands: true,
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: const Icon(Icons.search, size: 30),
                      prefixIconColor: const Color.fromRGBO(255, 227, 125, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(5, 31, 50, 1), width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(5, 31, 50, 1), width: 2)),
                      isDense: true,
                      labelText: "Pesquisar",
                      labelStyle: const TextStyle(
                        color: Color.fromRGBO(5, 31, 50, 0.7),
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ))),
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) => Card(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  child: InkWell(
                    child: Image.asset("assets/images/ImgFoodCards1.png"),
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  DropdownMenuItem<String> BuildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item,
            style: const TextStyle(
              color: Color.fromRGBO(255, 227, 125, 1),
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
      );
}
