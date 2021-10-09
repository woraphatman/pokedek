import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemondata.dart';

class Pokepage extends StatelessWidget {
  const Pokepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                  iconSize: 35,
                  color: const Color(0xff3CA6F2),
                  onPressed: () {}),
            ]),
        body: ListView(children: <Widget>[
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
                    pokemon_data[0]["bimg"],
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
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(pokemon_data[0]["name"],
                      style: const TextStyle(fontSize: 30)),
                  Text(pokemon_data[0]["data"],
                      style: const TextStyle(fontSize: 30)),
                  Text(pokemon_data[0]["type"],
                      style: const TextStyle(fontSize: 30)),
                  Text(pokemon_data[0]["weaknesses"],
                      style: const TextStyle(fontSize: 30)),
                ],
              ))
        ]));
  }
}
