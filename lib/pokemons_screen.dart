import 'package:flutter/material.dart';

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
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('22323'),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xffEDBDE5),
                  image: DecorationImage(
                    image: AssetImage("assets/001.png"),
                  ),
                ),
                child: Text("Bulbasaur #001", style: TextStyle(fontSize: 30))),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('22323'),
            ),
          ],
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final pokemon = ["dssd", "dsdad", "dsds", "01", "02", "03"];

  final recenpokemon = ["dssd", "dsdad", "dsds", "01", "02", "03"];

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
