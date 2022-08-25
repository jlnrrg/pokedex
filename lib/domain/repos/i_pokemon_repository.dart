import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/model_failure.dart';
import 'package:pokedex/domain/entities/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemon();
  Future<List<Pokemon>> getPokemons({required int limit, required int offset});
  Future<Either<ModelFailure, Pokemon>> getPokemon(String identifier);
}
