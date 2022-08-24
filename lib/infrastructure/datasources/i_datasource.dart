import 'package:pokedex/infrastructure/dtos/pokemon_wrapper_dto.dart';

abstract class IDatasource {
  Future<List<PokemonWrapperDTO>> getAllPokemon();
  Future<PokemonWrapperDTO?> getPokemonByUrl(String url);
  Future<PokemonWrapperDTO?> getPokemon(String identifier);
}
