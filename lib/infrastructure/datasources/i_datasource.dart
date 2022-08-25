import 'package:dartz/dartz.dart';
import 'package:pokedex/domain/core/model_failure.dart';
import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';

abstract class IDatasource {
  Future<List<PokemonWrapperDTO>> getAllPokemon();
  Future<List<PokemonWrapperDTO>> getPokemons(
      {required int limit, required int page});
  Future<Either<ModelFailure, PokemonWrapperDTO>> getPokemonByUrl(String url);
  Future<Either<ModelFailure, PokemonWrapperDTO>> getPokemon(String identifier);
}
