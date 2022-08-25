import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/view/states/pokemon/pokemon_loader.dart';
import 'package:pokedex/view/states/pokemon/pokemon_sink.dart';

import '../../../utils/data/mocks_pokemon_dto.dart';

void main() {
  test(
      'Given pokemonSinkProvider is empty, When pokemonLoaderProvider gets data, Then pokemonSinkProvider received the data',
      () {
    // Arrange
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    final sinkBefore = providerContainer.read(pokemonSinkProvider);
    expect(sinkBefore, equals(<Pokemon>{}));

    // Act
    providerContainer
        .read(pokemonLoaderProvider.notifier)
        .setValue([mockPokemon1]);

    final sinkAfter = providerContainer.read(pokemonSinkProvider);

    // Assert

    expect(sinkAfter, equals(<Pokemon>{mockPokemon1}));
  });
}
