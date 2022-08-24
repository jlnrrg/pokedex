import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_color.dart';
import 'package:pokedex/domain/entities/pokemon_types.dart';
import 'package:pokedex/domain/entities/sprites.dart';
import 'package:pokedex/view/widgets/pokemon/pokemon_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            PokemonTile(
                pokemon: Pokemon(
                    id: 1,
                    name: 'bulbasaur',
                    height: 5,
                    weight: 20,
                    description: 'Dies ist nur ein Test',
                    sprites: Sprites(
                      backDefault:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png",
                      backFemale: null,
                      backShiny:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/1.png",
                      backShinyFemale: null,
                      frontDefault:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
                      frontFemale: null,
                      frontShiny:
                          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
                      frontShinyFemale: null,
                    ),
                    color: PokemonColor.green(),
                    types: [PokemonTypes.grass(), PokemonTypes.poison()]))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
