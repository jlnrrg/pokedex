import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repos/i_pokemon_repository.dart';
import 'package:pokedex/infrastructure/provider.dart';

final pokemonLoaderProvider =
    StateNotifierProvider<PokemonLoader, AsyncValue<List<Pokemon>>>(
        (ref) => PokemonLoader(
              ref.watch(pokemonRepositoryProvider),
            ));

class PokemonLoader extends StateNotifier<AsyncValue<List<Pokemon>>> {
  PokemonLoader(this._repository) : super(const AsyncValue.loading());

  final IPokemonRepository _repository;

  static const int itemsPerPage = 10;

  int page = 0;

  Future<void> fetchedNext(int amount) async {
    state = const AsyncValue.loading();

    final result =
        await _repository.getPokemons(limit: itemsPerPage, offset: page);

    state = result.fold((l) => AsyncValue.error(l), (r) => AsyncValue.data(r));
    page += 1;
  }

  void setValue(List<Pokemon> list) {
    state = AsyncValue.data(list);
  }

  void reset() {
    page = 0;
  }
}
