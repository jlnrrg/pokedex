import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/repos/i_pokemon_repository.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';
import 'package:pokedex/infrastructure/datasources/pokeapi_datasource.dart';
import 'package:pokedex/infrastructure/repos/pokemon_repository.dart';
import 'package:pokedex/infrastructure/service/dio_http_service.dart';

final httpServiceProvider = Provider((ref) {
  return DioHttpService();
});

final datasourceProvider = Provider<IDatasource>(
    (ref) => PokeAPIDatasource(httpService: ref.watch(httpServiceProvider)));

final pokemonRepositoryProvider = Provider<IPokemonRepository>(
    (ref) => PokemonRepository(apiDatasource: ref.watch(datasourceProvider)));
