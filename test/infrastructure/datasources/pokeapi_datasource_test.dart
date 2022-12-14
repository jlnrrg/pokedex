import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/domain/core/either_extension.dart';
import 'package:pokedex/infrastructure/datasources/pokeapi_datasource.dart';

import '../../utils/data/mocks_pokemon_dto.dart';
import '../../utils/mocks.dart';

void main() {
  late PokeAPIDatasource datasource;
  late MockHttpService mockHttpService;

  setUp(() {
    mockHttpService = MockHttpService();
    datasource = PokeAPIDatasource(httpService: mockHttpService);
  });

  group('PokeAPIDatasource.getPokemon()', () {
    test(
        'Given mockPokemon1, When getPokemon(), Then PokemonWrapperDTO is returned',
        () async {
      // Arrange

      when(() => mockHttpService.get('https://pokeapi.co/api/v2/pokemon/1/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon1.json');
        final data = await file.readAsString();
        final jsonDetails = jsonDecode(data);
        return jsonDetails;
      });

      when(() => mockHttpService
              .get('https://pokeapi.co/api/v2/pokemon-species/1/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon_species1.json');
        final data = await file.readAsString();
        final jsonDetails = jsonDecode(data);
        return jsonDetails;
      });

      // Act
      final result = await datasource
          .getPokemonByUrl('https://pokeapi.co/api/v2/pokemon/1/');

      // Assert
      // expectations set like this, because there is to much much flavor text to compare
      expect(result.getOrNull()?.detail, mockPokemonDTO1.detail);
      expect(result.getOrNull()?.sprites, mockPokemonDTO1.sprites);
      expect(result.getOrNull()?.types, mockPokemonDTO1.types);
      expect(result.getOrNull()?.species.copyWith(flavor_text_entries: []),
          mockPokemonDTO1.species.copyWith(flavor_text_entries: []));
    });
  });
}
