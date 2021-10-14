import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemondata.dart';
import 'package:pokepokemon/pokepage.dart';
import 'package:pokepokemon/vspokemon.dart';

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
              iconSize: 50,
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
          for (var i = 0; i < pokemon_data.length; i++)
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => Pokepage(data: i)));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffeeeeee),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          pokemon_data[i]["img"],
                          fit: BoxFit.fill,
                        ),
                        Text(pokemon_data[i]["name"],
                            style: const TextStyle(fontSize: 30)),
                        Text(pokemon_data[i]["type"],
                            style: const TextStyle(fontSize: 30)),
                      ],
                    ),
                  ),
                )
              ],
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (_) => const Vspokemon(data: 0)));
        },
        child: CircleAvatar(
          child: Image.asset(
            "assets/vs.png",
          ),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
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
    return Center(child: Text(query + "#404"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? pokemon_data
        : pokemon_data.where((p) => p["name"].startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            print(pokemon_data
                .where((p) => p["name"].startsWith(query))
                .toList()[index]["name"]);
            for (var i = 0; i < pokemon_data.length; i++) {
              if (pokemon_data[i]["name"] ==
                  pokemon_data
                      .where((p) => p["name"].startsWith(query))
                      .toList()[index]["name"]) {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => Pokepage(data: i)));
                return;
              }
            }
          },
          leading: const Icon(Icons.catching_pokemon),
          title: RichText(
              text: TextSpan(
                  text:
                      suggestionList[index]["name"].substring(0, query.length),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: suggestionList[index]["name"].substring(query.length),
                    style: const TextStyle(color: Colors.grey)),
              ]))),
      itemCount: suggestionList.length,
    );
  }
}
