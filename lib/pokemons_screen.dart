import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemondata.dart';

class PokemonsScreen extends StatelessWidget {
  const PokemonsScreen({Key? key}) : super(key: key);

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
                icon: const Icon(Icons.search),
                tooltip: 'Enter Code Or Name  Pokemon To Search',
                iconSize: 35,
                color: const Color(0xff3CA6F2),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                }),
          ],
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[0]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[0]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[0]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffBDEDC2),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[1]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[1]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[1]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xff7B62A3),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[2]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[2]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[2]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xff573D2A),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[3]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[3]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[3]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[4]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[4]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[4]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[5]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[5]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[5]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[6]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[6]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[6]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[7]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[7]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[7]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[8]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[8]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[8]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[9]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[9]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[9]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[10]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[10]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[10]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[11]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[11]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[11]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[12]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[12]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[12]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xffEDBDE5),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        pokemon_data[13]["img"],
                        fit: BoxFit.fill,
                      ),
                      Text(pokemon_data[13]["name"],
                          style: const TextStyle(fontSize: 30)),
                      Text(pokemon_data[13]["type"],
                          style: const TextStyle(fontSize: 30)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final pokemon = [
    "Slowpoke",
    "Cubone",
    "Ponyta",
    "Abra",
    "Charmander",
    "Cubone",
    "001",
    "002",
    "003",
    "004",
    "005",
    "006"
  ];

  final recenpokemon = [
    "Slowpoke",
    "Cubone",
    "Ponyta",
    "Abra",
    "Charmander",
    "Cubone"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          color: const Color(0xff3CA6F2),
          icon: const Icon(Icons.close),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          color: const Color(0xff3CA6F2),
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recenpokemon
        : pokemon.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
          },
          leading: const Icon(Icons.catching_pokemon),
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: const TextStyle(color: Colors.grey)),
              ]))),
      itemCount: suggestionList.length,
    );
  }
}
