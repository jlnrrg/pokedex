import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/states/pokemon/pokemon_loader.dart';

/// Listens to [pokemonLoaderProvider]. On Update merges with existing data to one [Set]
final pokemonSinkProvider = Provider<Set<Pokemon>>((ref) {
  ref.listen<AsyncValue<List<Pokemon>>>(pokemonLoaderProvider,
      ((previous, next) {
    if (next.hasValue) {
      final set = {...ref.state, ...next.valueOrNull ?? []};

      ref.state = set;
    }
  }));
  return <Pokemon>{};
});
