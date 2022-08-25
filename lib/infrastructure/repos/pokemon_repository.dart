import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/model_failure.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/repos/i_pokemon_repository.dart';
import 'package:pokedex/infrastructure/datasources/i_datasource.dart';

class PokemonRepository implements IPokemonRepository {
  PokemonRepository({required this.apiDatasource});
  final IDatasource apiDatasource;

  @override
  Future<Either<ModelFailure, List<Pokemon>>> getAllPokemon() async {
    final apiModelsEither = await apiDatasource.getAllPokemon();

    return apiModelsEither.map((r) => r.map((e) => e.toDomain()).toList());
  }

  @override
  Future<Either<ModelFailure, Pokemon>> getPokemon(String identifier) async {
    final apiModel = await apiDatasource.getPokemon(identifier);
    final r = apiModel.map((r) => r.toDomain());
    return r;
  }

  @override
  Future<Either<ModelFailure, List<Pokemon>>> getPokemons(
      {required int limit, required int offset}) async {
    final apiModelsEither =
        await apiDatasource.getPokemons(limit: limit, page: offset);

    return apiModelsEither.map((r) => r.map((e) => e.toDomain()).toList());
  }
}
