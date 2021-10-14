import 'package:flutter/material.dart';
import 'package:pokepokemon/pokemons_screen.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffC5DCED),
      ),
      home: const PokemonsScreen(),
      initialRoute: 'pokemons_screen',
    );
  }
}
