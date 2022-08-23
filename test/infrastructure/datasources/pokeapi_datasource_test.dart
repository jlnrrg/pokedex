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

  group('PokeAPIDatasource.getAllPokemon()', () {
    test(
        'Given mockJsonPokemonList, When getAllPokemon(), Then mockPokemonDTOList is returned',
        () async {
      // Arrange

      when(() => mockHttpService.get('pokemon?limit=100000&offset=0'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });

      when(() => mockHttpService.get('https://pokeapi.co/api/v2/pokemon/1/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon1.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });
      when(() => mockHttpService.get('https://pokeapi.co/api/v2/pokemon/2/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon2.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });
      when(() => mockHttpService.get('https://pokeapi.co/api/v2/pokemon/3/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon3.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });
      when(() => mockHttpService.get('https://pokeapi.co/api/v2/pokemon/4/'))
          .thenAnswer((v) async {
        final file = File('test/utils/data/mocks_pokemon4.json');
        final data = await file.readAsString();
        return Response(
            requestOptions: RequestOptions(path: ''),
            statusCode: 200,
            data: data);
      });

      // Act
      final result = await datasource.getAllPokemon();

      // Assert
      expect(result, isNotEmpty);
      expect(result, mockPokemonList);
    });
  });
}
