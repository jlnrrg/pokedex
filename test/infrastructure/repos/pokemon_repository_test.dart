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

  group('PokemonRepository.getAllPokemon()', () {
    test(
        'Given mockPokemonDTOList, When getAllPokemon(), Then mockPokemonList is returned',
        () async {
      // Arrange

      when(() => mockDatasource.getAllPokemon())
          .thenAnswer((_) async => Future.value(mockPokemonDTOList));

      // Act
      final result = await pokemonRepository.getAllPokemon();

      // Assert
      expect(result, isNotEmpty);

      verify(() => mockDatasource.getAllPokemon()).called(1);
      expect(result, mockPokemonList);
    });
  });
}
