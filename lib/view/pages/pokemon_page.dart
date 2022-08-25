import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/states/pokemon/pokemon_notifier.dart';
import 'package:pokedex/view/widgets/pokemon/pokemon_card.dart';

class PokemonPage extends ConsumerStatefulWidget {
  const PokemonPage({
    Key? key,
    required this.identifier,
  }) : super(key: key);

  final String identifier;

  @override
  ConsumerState<PokemonPage> createState() => _PokemonPageState();
}

class _PokemonPageState extends ConsumerState<PokemonPage> {
  late AutoDisposeFutureProvider<Pokemon?> pokemonP;

  @override
  void initState() {
    pokemonP = pokemonProvider(widget.identifier);
  }

  @override
  void didUpdateWidget(covariant PokemonPage oldWidget) {
    if (oldWidget.identifier != widget.identifier) {
      pokemonP = pokemonProvider(widget.identifier);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonP);

    return SafeArea(
      child: Scaffold(
          body: Center(
              child: pokemonAsync.when(
        loading: () => const CircularProgressIndicator(),
        error: (error, stackTrace) => Text(error.toString()),
        data: (data) {
          if (data != null) {
            return PokemonCard(pokemon: data);
          }
          return const Text('Pokemon could not be found');
        },
      ))),
    );
  }
}
