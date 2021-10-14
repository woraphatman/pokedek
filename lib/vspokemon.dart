import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemondata.dart';

class Vspokemon extends StatefulWidget {
  const Vspokemon({Key? key, required this.data}) : super(key: key);

  final int data;

  @override
  State<Vspokemon> createState() => _VspokemonState();
}

class _VspokemonState extends State<Vspokemon> {
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
                    Navigator.pop(context);
                  })
            ]),
        body: ListView(children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffeeeeee),
              ),
              child: Column(children: [
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    hintText: 'Put PokemonName',
                  ),
                ),
                Row(
                  children: [
                    const Text("Name : ", style: TextStyle(fontSize: 30)),
                    Text(pokemon_data[widget.data]["name"],
                        style: const TextStyle(fontSize: 30)),
                  ],
                ),
                Column(children: [
                  Image.asset(
                    pokemon_data[widget.data]["bimg"],
                    fit: BoxFit.fill,
                  ),
                  Row(
                    children: [
                      const Text("HP : ", style: TextStyle(fontSize: 30)),
                      Text(pokemon_data[widget.data]["hp"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                  Row(children: [
                    const Text("ATK : ", style: TextStyle(fontSize: 30)),
                    Text(pokemon_data[widget.data]["atk"],
                        style: const TextStyle(fontSize: 30)),
                  ]),
                  Row(children: [
                    const Text("Def : ", style: TextStyle(fontSize: 30)),
                    Text(pokemon_data[widget.data]["def"],
                        style: const TextStyle(fontSize: 30)),
                  ]),
                  Row(children: [
                    const Text("Total : ", style: TextStyle(fontSize: 30)),
                    Text(pokemon_data[widget.data]["total"],
                        style: const TextStyle(fontSize: 30)),
                  ]),
                ]),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffeeeeee),
                    ),
                    child: Column(children: [
                      const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          hintText: 'Put PokemonName',
                        ),
                      ),
                      Row(
                        children: [
                          const Text("Name : ", style: TextStyle(fontSize: 30)),
                          Text(pokemon_data[widget.data + 7]["name"],
                              style: const TextStyle(fontSize: 30)),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            pokemon_data[widget.data + 7]["bimg"],
                            fit: BoxFit.fill,
                          ),
                          Row(
                            children: [
                              const Text("HP : ",
                                  style: TextStyle(fontSize: 30)),
                              Text(pokemon_data[widget.data + 7]["hp"],
                                  style: const TextStyle(fontSize: 30)),
                            ],
                          ),
                          Row(children: [
                            const Text("ATK : ",
                                style: TextStyle(fontSize: 30)),
                            Text(pokemon_data[widget.data + 7]["atk"],
                                style: const TextStyle(fontSize: 30)),
                          ]),
                          Row(children: [
                            const Text("Def : ",
                                style: TextStyle(fontSize: 30)),
                            Text(pokemon_data[widget.data + 7]["def"],
                                style: const TextStyle(fontSize: 30)),
                          ]),
                          Row(children: [
                            const Text("Total : ",
                                style: TextStyle(fontSize: 30)),
                            Text(pokemon_data[widget.data + 7]["total"],
                                style: const TextStyle(fontSize: 30)),
                          ]),
                        ],
                      ),
                    ]))
              ]))
        ]));
  }
}
