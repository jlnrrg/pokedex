import 'package:pokedex/domain/entities/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemon();
  Future<List<Pokemon>> getPokemons({required int limit, required int offset});
  Future<Pokemon?> getPokemon(String identifier);
}
