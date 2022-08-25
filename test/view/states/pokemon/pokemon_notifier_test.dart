import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/states/pokemon/pokemon_notifier.dart';
import 'package:pokedex/view/states/pokemon/pokemon_sink.dart';

import '../../../utils/data/mocks_pokemon_dto.dart';

void main() {
  test(
      'Given pokemonSinkProvider is empty, When pokemonLoaderProvider gets data, Then pokemonSinkProvider received the data',
      () async {
    // Arrange
    final providerContainer = ProviderContainer(overrides: [
      pokemonSinkProvider.overrideWithValue({mockPokemon1})
    ]);

    addTearDown(providerContainer.dispose);

    // Act
    final pokemonP = pokemonProvider(mockPokemon1.id.toString());
    expect(
        providerContainer.read(pokemonP), const AsyncValue<Pokemon?>.loading());

    final pokemonData = await providerContainer.read(pokemonP.future);

    // Assert
    expect(pokemonData, equals(mockPokemon1));
  });
}
