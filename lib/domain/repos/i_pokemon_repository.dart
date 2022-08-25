import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/model_failure.dart';
import 'package:pokedex/domain/entities/pokemon.dart';

abstract class IPokemonRepository {
  Future<Either<ModelFailure, List<Pokemon>>> getAllPokemon();
  Future<Either<ModelFailure, List<Pokemon>>> getPokemons(
      {required int limit, required int offset});
  Future<Either<ModelFailure, Pokemon>> getPokemon(String identifier);
}
