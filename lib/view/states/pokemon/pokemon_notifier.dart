import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/core/either_extension.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/infrastructure/provider.dart';
import 'package:pokedex/view/states/pokemon/pokemon_sink.dart';

/// based on the passed identifier, first checks if the [Pokemon] exists within the [pokemonSinkProvider], else it requests the [pokemonRepositoryProvider]
final pokemonProvider = FutureProvider.autoDispose
    .family<Pokemon?, String>(((ref, identifier) async {
  final sink = ref.read(pokemonSinkProvider);
  final sinkPokemon = sink.firstWhereOrNull((element) =>
      element.id == int.tryParse(identifier) || element.name == identifier);

  if (sinkPokemon != null) {
    return sinkPokemon;
  }
  final repoEither =
      await ref.read(pokemonRepositoryProvider).getPokemon(identifier);
  return repoEither.getOrNull();
}));
