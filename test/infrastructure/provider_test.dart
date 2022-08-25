import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/infrastructure/datasources/pokeapi_datasource.dart';
import 'package:pokedex/infrastructure/provider.dart';
import 'package:pokedex/infrastructure/repos/pokemon_repository.dart';
import 'package:pokedex/infrastructure/service/dio_http_service.dart';

void main() {
  test(
      'Given httpServiceProvider, When created, Then is of type DioHttpService',
      () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(httpServiceProvider),
      isA<DioHttpService>(),
    );
  });
  test(
      'Given datasourceProvider, When created, Then is of type PokeAPIDatasource',
      () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(datasourceProvider),
      isA<PokeAPIDatasource>(),
    );
  });
  test(
      'Given pokemonRepositoryProvider, When created, Then is of type PokemonRepository',
      () {
    final providerContainer = ProviderContainer();

    addTearDown(providerContainer.dispose);

    expect(
      providerContainer.read(pokemonRepositoryProvider),
      isA<PokemonRepository>(),
    );
  });
}
