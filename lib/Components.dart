import 'package:flutter/material.dart';

// Carrossel de comidas
class HomeCarroussel extends StatelessWidget {
  const HomeCarroussel({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, index) =>
            Stack(alignment: AlignmentDirectional.center, children: [
          SizedBox(
            width: 180,
            height: 120,
            child: Card(
              elevation: 3,
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Ink.image(
                image: AssetImage("assets/images/ImgFoodCards$index.png"),
                fit: BoxFit.fill,
                child: InkWell(
                  onTap: () {},
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            child: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 100),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(5, 31, 50, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      TextFromImage(index),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  String TextFromImage(int index) {
    switch (index) {
      case 0:
        return "Frango";
      case 1:
        return "Sopa";
      case 2:
        return "Pizza";
      default:
        return "";
    }
  }
}

// Barra de Pesquisa
class SearchBar extends StatelessWidget {
  const SearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
