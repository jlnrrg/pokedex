import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/infrastructure/repos/pokemon_repository.dart';

import '../../utils/data/mocks_pokemon_dto.dart';
import '../../utils/mocks.dart';

void main() {
  late PokemonRepository pokemonRepository;
  late MockDatasource mockDatasource;

  setUp(() {
    mockDatasource = MockDatasource();
    pokemonRepository = PokemonRepository(apiDatasource: mockDatasource);
  });

  group('PokemonRepository.getPokemon()', () {
    test(
        'Given mockPokemonWrapperDTO1, When getPokemon(), Then mockPokemon1 is returned',
        () async {
      // Arrange

      when(() => mockDatasource.getPokemon('1'))
          .thenAnswer((_) async => Future.value(mockPokemonDTO1));

      // Act
      final result = await pokemonRepository.getPokemon('1');

      // Assert

      verify(() => mockDatasource.getPokemon('1')).called(1);
      expect(result, mockPokemon1);
    });
  });
}
