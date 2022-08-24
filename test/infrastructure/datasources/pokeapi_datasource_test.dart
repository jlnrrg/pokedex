import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
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
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });

      when(() => mockHttpService
              .get('https://pokeapi.co/api/v2/pokemon-species/1/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon_species1.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });

      // Act
      final result = await datasource
          .getPokemonByUrl('https://pokeapi.co/api/v2/pokemon/1/');

      // Assert
      // expectations set like this, because there is to much much flavor text to compare
      expect(result?.detail, mockPokemonDTO1.detail);
      expect(result?.sprites, mockPokemonDTO1.sprites);
      expect(result?.types, mockPokemonDTO1.types);
      expect(result?.species.copyWith(flavor_text_entries: []),
          mockPokemonDTO1.species.copyWith(flavor_text_entries: []));
    });
  });
}
