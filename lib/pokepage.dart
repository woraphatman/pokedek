import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemondata.dart';
import 'package:pokepokemon/pokemons_screen.dart';

class Pokepage extends StatefulWidget {
  const Pokepage({Key? key, required this.data}) : super(key: key);

  final int data;

  @override
  State<Pokepage> createState() => _PokepageState();
}

class _PokepageState extends State<Pokepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xff3CA6F2)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Pokedex",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: const Color(0xff3CA6F2),
                fontWeight: FontWeight.bold,
                fontFamily: 'd',
                fontSize: 50),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.home),
                tooltip: 'Back To Homepage',
                iconSize: 50,
                color: const Color(0xff3CA6F2),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PokemonsScreen()));
                }),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      pokemon_data[widget.data]["bimg"],
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(10),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(pokemon_data[widget.data]["color"] ?? 0xffeeeeee),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text(pokemon_data[widget.data]["name"],
                      style: const TextStyle(fontSize: 30)),
                  Text(pokemon_data[widget.data]["data"],
                      style: const TextStyle(fontSize: 30)),
                  Row(
                    children: [
                      const Text("Type : ", style: TextStyle(fontSize: 30)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color(0xffa29d9d),
                        ),
                        child: Text(pokemon_data[widget.data]["type"],
                            style: const TextStyle(fontSize: 30)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Weaknesses : ",
                          style: TextStyle(fontSize: 30)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xffa29d9d),
                        ),
                        child: Text(pokemon_data[widget.data]["weaknesses"],
                            style: const TextStyle(fontSize: 30)),
                      )
                    ],
                  )
                ]),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  pokemon_data[widget.data]["img1"],
                  fit: BoxFit.fill,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 50,
                ),
                Image.asset(
                  pokemon_data[widget.data]["img2"],
                  fit: BoxFit.fill,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 50,
                ),
                Image.asset(
                  pokemon_data[widget.data]["img3"],
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ));
  }
}
